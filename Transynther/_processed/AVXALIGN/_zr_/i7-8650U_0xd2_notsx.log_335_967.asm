.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1469b, %r8
nop
nop
nop
nop
nop
and $35206, %r9
mov $0x6162636465666768, %rbx
movq %rbx, %xmm5
movups %xmm5, (%r8)
nop
nop
nop
nop
sub %r14, %r14
lea addresses_UC_ht+0x16ab, %rsi
lea addresses_D_ht+0xe72b, %rdi
nop
cmp %r14, %r14
mov $46, %rcx
rep movsq
nop
nop
nop
nop
add %r8, %r8
lea addresses_WC_ht+0x1c92b, %r14
nop
nop
cmp %r9, %r9
mov (%r14), %edi
nop
nop
nop
inc %r9
lea addresses_A_ht+0xc92b, %r8
nop
and $20248, %rsi
movl $0x61626364, (%r8)
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_normal_ht+0x15bbf, %rcx
nop
nop
nop
nop
nop
xor $52307, %r9
mov (%rcx), %di
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_WT_ht+0x1b17c, %rcx
nop
nop
nop
xor $27367, %r9
mov $0x6162636465666768, %rbx
movq %rbx, %xmm5
movups %xmm5, (%rcx)
nop
inc %r14
lea addresses_UC_ht+0x904e, %rsi
lea addresses_WT_ht+0x7743, %rdi
nop
add %r9, %r9
mov $120, %rcx
rep movsl
nop
nop
xor $33178, %rbx
lea addresses_D_ht+0x5f2b, %r9
nop
nop
nop
lfence
vmovups (%r9), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rdi
nop
nop
nop
nop
cmp $44780, %rbx
lea addresses_D_ht+0x15813, %rsi
cmp %r9, %r9
movw $0x6162, (%rsi)
nop
nop
nop
nop
inc %rsi
lea addresses_normal_ht+0xb72b, %rcx
sub $30583, %r8
mov $0x6162636465666768, %r14
movq %r14, (%rcx)
nop
nop
sub $3328, %rcx
lea addresses_UC_ht+0x124a3, %r14
nop
nop
nop
nop
nop
sub $52199, %rsi
movb (%r14), %cl
nop
xor $18588, %r8
lea addresses_UC_ht+0x96ab, %r9
nop
nop
nop
nop
cmp $13513, %r14
movl $0x61626364, (%r9)
nop
add $17739, %rsi
lea addresses_WT_ht+0x1d72b, %rcx
nop
nop
nop
nop
xor $21046, %rdi
mov (%rcx), %rbx
sub %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %rbx
push %rcx
push %rdi
push %rsi

// Load
lea addresses_RW+0x1072b, %rsi
clflush (%rsi)
nop
sub $55730, %r12
vmovups (%rsi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rbx
nop
nop
nop
nop
nop
inc %rsi

// Store
lea addresses_PSE+0x1580b, %rcx
nop
nop
nop
nop
nop
sub $1211, %rbx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm5
movups %xmm5, (%rcx)
nop
nop
nop
nop
nop
sub $20387, %r12

// REPMOV
lea addresses_US+0x1672b, %rsi
mov $0x17b, %rdi
dec %rbx
mov $13, %rcx
rep movsl
nop
nop
dec %rbx

// Faulty Load
lea addresses_PSE+0x1bf2b, %r12
nop
nop
nop
nop
nop
inc %rbx
vmovntdqa (%r12), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r11
lea oracles, %rdi
and $0xff, %r11
shlq $12, %r11
mov (%rdi,%r11,1), %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_US', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_P', 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': True, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'00': 335}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
