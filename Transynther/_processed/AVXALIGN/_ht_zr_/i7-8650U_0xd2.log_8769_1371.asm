.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1e1e3, %r11
nop
nop
nop
nop
nop
sub %r8, %r8
movb (%r11), %r12b
nop
add %rdx, %rdx
lea addresses_WC_ht+0x1a378, %rsi
lea addresses_WC_ht+0x12bb8, %rdi
nop
nop
nop
cmp %r8, %r8
mov $48, %rcx
rep movsw
nop
nop
inc %rsi
lea addresses_A_ht+0x5658, %rsi
cmp %r12, %r12
movw $0x6162, (%rsi)
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_WC_ht+0x14778, %rsi
lea addresses_UC_ht+0x1e48c, %rdi
nop
nop
nop
nop
xor %r12, %r12
mov $29, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_A_ht+0x153cc, %rcx
nop
nop
sub %r8, %r8
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_WC_ht+0x10b78, %rsi
lea addresses_D_ht+0xe7b2, %rdi
nop
nop
sub %r9, %r9
mov $100, %rcx
rep movsw
nop
nop
add %r12, %r12
lea addresses_normal_ht+0x8044, %rdi
nop
nop
nop
nop
sub $54419, %rsi
mov (%rdi), %dx
nop
nop
sub $7590, %r8
lea addresses_normal_ht+0xe778, %r12
nop
cmp %rsi, %rsi
movl $0x61626364, (%r12)
nop
nop
nop
nop
nop
and %r9, %r9
lea addresses_WT_ht+0x18cac, %rsi
lea addresses_D_ht+0x6e2c, %rdi
nop
nop
nop
nop
nop
xor %r8, %r8
mov $109, %rcx
rep movsw
nop
nop
and %rsi, %rsi
lea addresses_WT_ht+0x18220, %rsi
lea addresses_UC_ht+0x66f8, %rdi
clflush (%rsi)
nop
nop
nop
sub %r8, %r8
mov $51, %rcx
rep movsq
nop
nop
nop
nop
xor $18635, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r8
push %r9
push %rbp
push %rsi

// Store
lea addresses_WT+0x12948, %rsi
clflush (%rsi)
nop
nop
inc %r14
mov $0x5152535455565758, %r9
movq %r9, %xmm1
movups %xmm1, (%rsi)
sub %r13, %r13

// Store
lea addresses_WC+0x1dce2, %r14
nop
nop
inc %r8
movl $0x51525354, (%r14)
nop
nop
nop
add $27817, %r13

// Store
lea addresses_PSE+0x6978, %r14
nop
nop
nop
nop
and $55595, %rsi
movl $0x51525354, (%r14)
nop
nop
nop
nop
nop
inc %r8

// Store
mov $0x68b8090000000378, %rsi
nop
nop
nop
nop
and %r11, %r11
mov $0x5152535455565758, %r9
movq %r9, %xmm5
movups %xmm5, (%rsi)
nop
nop
nop
nop
nop
sub %r9, %r9

// Faulty Load
lea addresses_D+0x14778, %rsi
nop
add %r13, %r13
vmovaps (%rsi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rbp
lea oracles, %r9
and $0xff, %rbp
shlq $12, %rbp
mov (%r9,%rbp,1), %rbp
pop %rsi
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'00': 2318, '49': 5448, '48': 1003}
00 49 00 49 00 49 49 49 49 49 00 49 49 00 49 49 48 49 49 49 49 49 49 49 00 00 00 49 00 49 49 00 49 49 49 49 49 00 49 00 49 00 00 00 49 49 49 48 49 49 49 49 00 49 49 00 49 49 49 49 00 49 49 49 00 49 49 49 00 49 00 49 49 49 49 49 49 00 48 49 49 48 49 49 00 49 00 49 00 00 49 49 49 00 49 49 49 49 00 00 49 49 49 49 00 49 48 49 49 00 00 00 49 00 49 00 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 00 00 49 00 48 49 49 49 00 49 49 48 49 49 49 00 49 49 49 49 49 49 49 49 00 49 49 00 49 49 00 00 49 49 48 00 49 49 00 49 49 49 49 49 49 00 49 49 49 49 48 49 49 49 49 49 49 49 49 00 00 48 49 00 49 00 00 49 49 48 49 00 49 00 49 49 49 49 00 49 00 49 00 48 49 48 49 00 00 49 48 49 49 48 49 49 48 49 49 49 48 49 49 49 48 00 49 49 49 49 49 49 49 00 49 49 48 00 49 49 48 00 48 49 00 49 49 00 48 49 00 49 49 48 00 49 00 48 49 00 48 49 49 00 49 48 00 49 48 49 49 49 00 49 00 00 49 00 49 49 00 49 48 49 00 49 49 49 49 49 49 49 00 48 49 00 48 49 00 48 49 00 49 49 49 00 48 48 49 49 00 49 49 00 00 00 00 49 49 49 00 49 49 49 48 49 00 49 00 49 49 49 00 49 48 49 00 49 49 49 00 49 49 49 00 49 00 49 48 49 49 00 49 49 49 49 49 49 49 49 48 49 48 49 49 00 49 49 00 49 49 49 49 49 49 00 49 49 00 49 49 49 00 00 48 49 00 49 49 00 49 49 49 00 49 00 00 00 00 49 49 49 00 49 49 00 49 49 49 49 49 49 49 00 49 49 00 48 49 49 49 00 49 49 00 49 49 00 00 48 49 49 49 00 49 49 00 49 00 00 00 49 49 49 49 49 00 49 49 49 49 00 48 00 48 49 49 48 49 49 49 00 49 49 00 49 49 49 49 49 00 49 49 49 49 49 00 49 00 48 49 00 49 48 00 00 48 49 48 49 49 49 49 49 49 00 49 49 48 49 00 00 49 49 00 49 49 00 00 00 49 48 48 49 49 00 48 49 00 49 00 49 49 00 49 00 48 49 49 49 49 49 49 49 48 00 49 00 49 49 49 49 49 49 00 49 49 49 49 00 00 00 49 49 49 49 49 49 49 49 49 49 49 49 49 00 00 49 00 48 49 00 49 00 49 00 00 49 00 49 49 49 00 49 48 49 49 49 49 00 00 49 49 00 00 49 49 49 49 48 00 49 00 49 49 49 49 49 49 00 49 49 00 00 49 49 00 00 49 49 49 00 49 49 00 00 49 00 00 00 49 00 00 49 00 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 00 49 49 49 49 00 00 49 00 49 49 00 48 49 49 49 49 49 00 49 00 00 00 49 49 49 48 48 49 49 49 00 49 00 00 49 49 49 49 49 49 00 48 49 49 49 00 49 00 49 48 49 49 00 49 49 00 00 48 49 00 00 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 00 00 48 49 00 49 49 49 49 49 00 00 49 49 49 49 49 49 00 49 49 49 49 00 49 49 49 49 49 48 00 49 49 49 00 00 00 49 00 00 49 49 49 00 49 49 48 49 00 49 48 49 49 49 49 00 49 00 00 49 48 49 49 49 49 00 49 00 49 49 49 49 49 49 00 49 49 00 00 48 49 49 49 49 49 00 00 49 00 49 49 48 49 49 49 48 00 49 49 00 49 49 49 49 00 49 49 48 49 49 00 48 00 49 00 49 49 49 49 00 49 49 00 49 00 48 49 49 49 49 49 00 49 49 00 49 00 49 49 49 49 49 49 48 49 49 00 00 49 49 49 49 48 48 49 49 49 00 49 49 49 49 49 00 48 00 00 49 49 49 49 00 49 49 49 48 00 49 49 49 49 49 00 49 48 49 00 49 49 49 00 49 00 00 48 49 49 49 49 49 49 49 48 48 00 49 49 49 49 00 49 00 48 49 49 49 00 49 49 00 48 00 49 49 00 49 00 49 49 49 49 49 00 49 48 00 49 49 49 49 49 49 49 49 49 49 00 48 49 49 00 49 49 49 49 48 49 49
*/
