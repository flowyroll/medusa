.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x8f4b, %rcx
nop
nop
nop
nop
nop
and %r12, %r12
movw $0x6162, (%rcx)
add $12986, %rax
lea addresses_WC_ht+0x16d9b, %rsi
nop
nop
sub %rdx, %rdx
movl $0x61626364, (%rsi)
nop
nop
nop
nop
and $27970, %rbp
lea addresses_A_ht+0x18beb, %rbp
nop
nop
nop
nop
nop
and %rdx, %rdx
movups (%rbp), %xmm3
vpextrq $0, %xmm3, %r8
nop
nop
inc %rsi
lea addresses_D_ht+0x10ceb, %rbp
cmp %rcx, %rcx
mov (%rbp), %r8
nop
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_UC_ht+0xa98b, %rsi
nop
nop
nop
nop
and %rdx, %rdx
mov $0x6162636465666768, %rbp
movq %rbp, (%rsi)
nop
nop
nop
dec %rax
lea addresses_UC_ht+0x554b, %rdx
nop
nop
nop
nop
xor $51635, %r12
movl $0x61626364, (%rdx)
nop
nop
nop
nop
inc %rcx
lea addresses_D_ht+0x10b, %rsi
lea addresses_WC_ht+0x1c14b, %rdi
clflush (%rsi)
nop
sub %rax, %rax
mov $36, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp %r12, %r12
lea addresses_normal_ht+0x1334b, %r12
nop
nop
nop
cmp %r8, %r8
mov $0x6162636465666768, %rcx
movq %rcx, (%r12)
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_D_ht+0x1b44b, %rdi
nop
nop
and $36587, %rdx
mov $0x6162636465666768, %r12
movq %r12, %xmm1
vmovups %ymm1, (%rdi)
nop
nop
and $38608, %r12
lea addresses_UC_ht+0x1714b, %rax
clflush (%rax)
inc %rdi
mov (%rax), %r8d
nop
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_A_ht+0x172cb, %r12
nop
nop
nop
nop
sub $10182, %rcx
vmovups (%r12), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r8
nop
nop
nop
cmp $10385, %rdx
lea addresses_WC_ht+0x9fe8, %rbp
nop
nop
nop
nop
nop
xor $54130, %rdi
movl $0x61626364, (%rbp)
nop
nop
and %rsi, %rsi
lea addresses_D_ht+0x534b, %rsi
lea addresses_WT_ht+0x5fc3, %rdi
clflush (%rdi)
nop
inc %rbp
mov $107, %rcx
rep movsb
nop
nop
nop
nop
xor %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %rcx
push %rdi
push %rdx
push %rsi

// Store
mov $0xc2e, %rcx
nop
cmp $51758, %rdx
mov $0x5152535455565758, %r10
movq %r10, %xmm7
movups %xmm7, (%rcx)
nop
nop
nop
nop
inc %rdi

// Store
lea addresses_UC+0xbacb, %rsi
clflush (%rsi)
nop
add %r11, %r11
movb $0x51, (%rsi)
sub %rdi, %rdi

// Faulty Load
lea addresses_A+0x15b4b, %r11
nop
nop
nop
nop
nop
add $6543, %rdi
mov (%r11), %r13d
lea oracles, %r11
and $0xff, %r13
shlq $12, %r13
mov (%r11,%r13,1), %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
