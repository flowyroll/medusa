.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1a4d7, %r8
nop
nop
nop
nop
sub $9826, %rax
movw $0x6162, (%r8)
nop
nop
cmp $14535, %rsi
lea addresses_WC_ht+0xc337, %r9
nop
nop
nop
and $44356, %rdi
movb $0x61, (%r9)
nop
nop
add $21314, %r13
lea addresses_D_ht+0x168b7, %rsi
lea addresses_normal_ht+0x253b, %rdi
cmp $3632, %r14
mov $4, %rcx
rep movsw
and %r9, %r9
lea addresses_WT_ht+0x1c337, %rsi
nop
nop
nop
dec %r13
movups (%rsi), %xmm6
vpextrq $0, %xmm6, %r14
nop
sub $47066, %rcx
lea addresses_D_ht+0x15421, %r13
cmp $18513, %rsi
movb (%r13), %r8b
cmp $61414, %rdi
lea addresses_WC_ht+0x7a37, %rsi
nop
nop
nop
cmp %r13, %r13
movb (%rsi), %al
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_D_ht+0x12337, %rsi
lea addresses_WC_ht+0x414f, %rdi
xor $3254, %r14
mov $24, %rcx
rep movsq
nop
nop
nop
add $61359, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %rax
push %rbx
push %rcx
push %rsi

// Store
mov $0x11de460000000b37, %rbx
nop
add %r15, %r15
mov $0x5152535455565758, %rax
movq %rax, %xmm5
vmovups %ymm5, (%rbx)
nop
nop
add %r13, %r13

// Store
lea addresses_WC+0x1a537, %rcx
nop
nop
nop
nop
and $17912, %r12
mov $0x5152535455565758, %rax
movq %rax, %xmm0
movaps %xmm0, (%rcx)
cmp $48860, %rsi

// Store
lea addresses_RW+0x17107, %rcx
nop
nop
nop
nop
sub %rsi, %rsi
movb $0x51, (%rcx)
nop
nop
nop
and $25390, %rcx

// Store
mov $0x11de460000000b37, %r15
nop
nop
nop
sub %rax, %rax
mov $0x5152535455565758, %rcx
movq %rcx, %xmm7
vmovaps %ymm7, (%r15)
xor %rsi, %rsi

// Faulty Load
mov $0x11de460000000b37, %rbx
nop
nop
nop
nop
cmp %rsi, %rsi
movb (%rbx), %cl
lea oracles, %r13
and $0xff, %rcx
shlq $12, %rcx
mov (%r13,%rcx,1), %rcx
pop %rsi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': True}}
{'00': 3835, '58': 1816, '54': 1, 'b0': 1, '30': 1, '70': 1, '24': 1, '09': 3, 'c0': 3, '8a': 1, '0c': 2, '6e': 1, 'fc': 1, '0a': 1}
00 00 00 00 58 00 00 00 58 58 58 58 00 00 00 00 00 00 00 00 00 58 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 58 00 00 00 00 00 00 58 58 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 58 00 58 58 00 00 00 58 00 00 58 00 58 00 00 00 00 00 00 00 00 58 00 00 00 58 00 58 00 00 00 00 58 00 00 00 00 58 00 00 00 00 00 58 00 58 00 58 00 00 58 00 00 58 00 58 00 00 00 58 00 58 00 00 00 00 00 58 58 00 58 00 00 00 00 00 58 00 00 00 58 58 58 58 00 00 00 58 58 00 58 00 54 58 00 00 58 58 58 00 58 00 58 00 00 00 00 58 00 00 00 58 58 00 00 00 58 58 00 00 58 58 58 00 00 00 58 58 58 00 00 58 58 00 58 00 58 00 00 00 58 00 00 58 58 58 58 58 58 00 58 00 00 58 00 58 58 00 00 58 58 00 00 00 00 00 00 58 00 58 58 00 00 00 00 00 00 58 00 00 58 00 00 58 00 58 00 58 58 00 58 00 00 00 58 00 00 58 00 58 58 00 00 00 b0 00 00 00 00 00 00 00 00 58 00 00 58 58 58 00 58 00 58 00 00 00 58 00 00 58 00 00 00 00 00 00 00 00 58 00 00 00 58 00 00 00 00 00 00 58 00 00 00 58 00 58 00 00 00 00 00 58 58 00 00 00 00 00 58 00 00 58 58 00 58 58 58 00 00 58 00 00 58 00 58 00 00 00 58 00 58 00 58 58 00 58 00 00 00 58 00 00 00 00 58 00 00 58 58 00 00 58 00 00 58 00 00 58 58 58 58 00 58 58 00 58 00 58 00 58 00 00 00 00 00 00 00 58 58 00 00 00 00 58 00 00 00 58 00 58 00 58 58 00 00 58 00 58 00 00 58 58 58 00 00 00 00 00 00 00 00 00 58 58 00 58 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 58 00 00 00 00 00 58 00 58 00 58 00 00 00 00 00 58 00 00 00 00 00 00 58 58 00 00 00 00 00 00 00 58 00 00 00 58 00 00 58 00 00 00 00 00 58 00 00 58 00 58 00 00 00 00 00 58 00 00 00 00 58 58 58 58 58 58 00 00 00 00 00 00 58 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 58 00 58 00 00 00 00 00 58 00 58 00 58 00 00 00 00 00 00 00 58 58 00 00 00 58 00 58 00 58 00 00 58 00 00 00 58 00 00 58 00 58 00 00 00 00 00 58 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 58 00 00 00 00 00 58 00 00 00 00 00 00 00 58 00 00 00 00 00 58 58 00 58 58 00 58 00 58 00 58 00 00 00 00 00 00 00 58 58 00 58 00 00 00 58 00 00 00 58 58 00 00 00 00 00 58 00 00 58 00 00 00 58 00 58 00 00 00 00 00 00 00 00 00 00 00 58 58 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 58 00 00 00 58 00 00 00 00 00 58 00 00 00 58 00 00 00 58 00 00 00 00 00 00 00 00 00 58 58 00 58 00 00 00 00 00 58 00 58 00 58 00 58 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 58 00 00 58 00 00 00 00 00 58 58 00 00 00 00 00 00 00 58 00 58 00 58 00 58 00 00 58 00 58 00 00 00 00 58 00 00 00 00 00 00 00 58 00 00 00 58 00 58 00 00 58 00 58 00 58 00 58 00 58 58 00 58 58 00 00 00 00 58 58 00 58 58 58 00 00 00 00 58 58 00 58 58 00 00 58 58 00 00 58 58 00 58 00 00 00 00 00 58 00 00 58 58 58 00 00 00 58 00 58 00 58 58 00 00 00 58 00 00 58 00 00 00 00 58 00 00 58 00 00 58 00 58 00 00 00 00 00 00 58 00 00 58 00 00 58 00 58 00 00 00 00 00 00 00 00 00 00 58 00 58 00 00 00 58 00 58 00 00 58 00 00 58 00 00 00 00 58 00 00 00 00 58 58 00 58 58 00 58 58 00 58 00 00 58 00 58 00 58 58 58 00 00 00
*/
