.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1c23a, %r14
nop
inc %rdi
movb $0x61, (%r14)
nop
cmp %r15, %r15
lea addresses_WC_ht+0x20b3, %rax
sub %rcx, %rcx
movl $0x61626364, (%rax)
nop
nop
nop
nop
xor $51802, %rdi
lea addresses_UC_ht+0x72cb, %rbp
nop
add %r13, %r13
mov $0x6162636465666768, %r15
movq %r15, %xmm0
vmovups %ymm0, (%rbp)
nop
nop
nop
nop
and $17676, %rbp
lea addresses_WC_ht+0x1dfcb, %r13
nop
nop
nop
nop
sub %rdi, %rdi
vmovups (%r13), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rax
nop
nop
nop
nop
nop
sub $18245, %r15
lea addresses_WC_ht+0x20cb, %rsi
lea addresses_A_ht+0x83cb, %rdi
clflush (%rsi)
nop
nop
nop
sub $11010, %r15
mov $96, %rcx
rep movsq
nop
nop
nop
nop
nop
add $13998, %r15
lea addresses_normal_ht+0x193cb, %r15
nop
nop
nop
xor %rdi, %rdi
movups (%r15), %xmm7
vpextrq $0, %xmm7, %rcx
nop
nop
cmp $13613, %r14
lea addresses_WC_ht+0x1c9cb, %rsi
lea addresses_D_ht+0x1e002, %rdi
nop
nop
nop
nop
xor $9951, %rbp
mov $78, %rcx
rep movsl
nop
nop
nop
nop
cmp $10647, %r14
lea addresses_WT_ht+0x12f4b, %rsi
lea addresses_WC_ht+0x5054, %rdi
nop
sub %r14, %r14
mov $114, %rcx
rep movsw
nop
nop
nop
xor $22767, %rcx
lea addresses_A_ht+0x475b, %rcx
nop
nop
nop
nop
nop
inc %r15
mov $0x6162636465666768, %rbp
movq %rbp, (%rcx)
nop
add $18630, %rax
lea addresses_UC_ht+0x5a6b, %rbp
nop
sub $10229, %rcx
mov (%rbp), %r14w
nop
add %r14, %r14
lea addresses_WC_ht+0x66f3, %rsi
lea addresses_D_ht+0x26a7, %rdi
clflush (%rdi)
and $53400, %r14
mov $90, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $40020, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r8
push %r9
push %rcx
push %rdi
push %rdx

// Store
lea addresses_WC+0x15bcb, %r8
nop
nop
nop
xor $25768, %r12
movl $0x51525354, (%r8)
nop
nop
nop
add $28257, %rdx

// Store
lea addresses_PSE+0x86cb, %r9
nop
nop
nop
nop
and %rcx, %rcx
mov $0x5152535455565758, %r12
movq %r12, %xmm0
vmovups %ymm0, (%r9)
nop
nop
xor %rdx, %rdx

// Store
lea addresses_A+0xecb, %rdx
nop
nop
nop
nop
add %rdi, %rdi
movw $0x5152, (%rdx)
nop
and %r13, %r13

// Faulty Load
lea addresses_UC+0x113cb, %rdi
nop
nop
nop
nop
cmp %r9, %r9
vmovaps (%rdi), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r13
lea oracles, %r12
and $0xff, %r13
shlq $12, %r13
mov (%r12,%r13,1), %r13
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 11, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 7, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 8, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': True, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 2, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 10, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 10, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 4, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'49': 851, '48': 9926, '44': 367, '00': 10685}
00 00 48 00 48 00 48 48 00 48 00 48 00 00 00 00 48 00 00 48 48 48 48 48 48 48 48 48 00 48 48 00 00 00 00 48 00 00 00 00 00 00 48 00 48 00 00 00 00 00 48 48 00 00 48 00 00 48 48 48 00 00 00 49 00 00 48 48 48 48 49 00 48 48 00 48 00 00 00 48 00 48 00 48 48 00 48 48 49 48 48 00 00 00 00 00 48 48 48 48 48 00 48 48 48 00 48 48 00 00 00 00 00 48 00 48 48 48 00 48 48 00 48 48 48 48 00 49 48 48 49 00 00 00 48 00 48 00 00 48 00 00 49 48 44 48 00 00 48 48 00 00 48 00 48 00 48 00 48 00 00 00 48 00 48 48 49 48 48 48 48 49 00 00 00 49 48 00 00 48 00 48 00 00 48 48 00 48 48 48 48 00 48 48 48 00 00 48 48 00 00 48 00 48 00 48 48 00 00 48 00 00 48 48 00 48 00 48 00 48 48 00 00 00 48 00 48 00 48 44 48 48 48 48 49 00 00 00 00 48 00 00 00 00 48 48 00 49 00 48 48 00 00 00 48 48 49 48 00 00 00 00 00 00 48 48 48 00 00 00 00 00 00 49 48 48 49 00 00 48 48 48 48 48 48 49 48 00 00 48 00 48 48 48 48 00 00 48 00 48 00 00 48 48 00 48 48 48 00 48 48 00 49 48 00 48 00 00 00 48 48 00 48 00 48 48 00 00 00 48 00 48 48 48 00 48 48 00 48 00 00 00 48 00 00 00 00 00 00 00 48 48 48 00 00 00 00 00 48 00 00 44 00 00 00 48 00 48 48 48 44 48 00 48 00 48 00 48 00 48 00 00 00 48 00 00 00 00 00 00 48 48 00 00 48 48 00 49 00 49 00 00 00 00 00 00 00 00 48 00 00 48 00 48 48 00 48 00 00 00 00 00 48 48 48 48 00 48 00 00 00 00 44 00 00 00 00 00 48 48 48 49 00 00 00 48 48 00 49 48 48 48 48 48 48 48 48 49 48 48 00 00 00 48 48 48 00 00 44 00 00 48 00 48 48 49 48 49 00 00 00 00 48 00 00 48 48 44 48 48 48 00 48 48 48 48 00 48 00 00 48 00 00 48 00 48 00 00 00 44 00 48 48 48 00 00 48 48 00 48 48 00 00 48 44 48 00 48 48 00 48 48 00 00 00 00 00 00 48 00 00 48 00 48 48 00 00 48 00 00 00 48 48 49 48 48 48 48 48 00 00 00 48 48 48 00 49 48 00 48 44 00 48 00 00 48 48 00 00 00 00 00 48 48 48 48 44 48 00 00 00 00 48 00 48 00 00 00 44 48 00 48 00 00 00 00 48 00 00 00 48 48 48 48 48 00 48 00 48 00 49 00 00 00 00 00 00 48 48 48 48 00 48 48 48 00 00 48 48 00 48 48 00 44 00 00 00 00 48 48 00 00 48 48 48 00 00 00 48 00 48 00 00 48 48 48 00 00 00 48 48 48 48 48 48 48 48 48 00 48 00 00 00 00 49 48 00 00 44 00 48 48 00 48 48 48 48 00 48 48 00 00 00 48 00 48 48 48 48 48 48 48 00 00 00 00 48 00 00 49 48 48 00 00 48 48 48 00 00 00 00 49 00 00 48 00 00 00 48 48 48 00 48 48 00 48 48 00 00 48 48 00 48 48 48 00 48 00 00 00 00 00 00 48 00 48 48 48 48 48 48 48 48 48 48 48 49 00 49 00 48 48 00 48 00 48 00 48 44 48 48 00 48 48 48 48 48 48 48 49 48 00 00 49 00 00 00 48 00 00 00 48 48 00 49 48 48 48 00 00 48 48 00 00 00 48 00 00 48 48 00 00 00 00 48 00 00 00 00 00 00 48 00 00 00 00 44 49 48 48 00 48 48 00 48 00 48 48 00 48 48 48 00 00 48 48 48 00 00 48 00 00 48 00 48 48 48 49 00 48 00 00 00 00 00 00 00 00 48 00 00 48 00 00 00 00 00 49 00 00 49 48 00 48 48 48 48 00 48 44 49 48 00 48 00 00 48 00 00 00 48 00 00 48 00 00 48 00 48 48 00 48 48 48 48 00 00 48 00 00 00 00 00 48 48 00 00 00 00 00 00 48 48 00 48 00 48 00 00 00 00 00 00 00 00 48 00 48 00 48 48 00 48 48 48 00 48 00 48 00 48 00 48 00 48 48 48 48 00 00 48 00 00 00 00 00 00 00 48 00
*/
