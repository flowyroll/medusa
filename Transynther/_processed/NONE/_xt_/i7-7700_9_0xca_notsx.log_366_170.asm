.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x812b, %rsi
lea addresses_A_ht+0x143ab, %rdi
clflush (%rsi)
nop
add %rbp, %rbp
mov $10, %rcx
rep movsq
nop
nop
nop
nop
dec %r15
lea addresses_A_ht+0x10bab, %rdi
xor $19547, %rsi
mov $0x6162636465666768, %r15
movq %r15, %xmm2
vmovups %ymm2, (%rdi)
nop
nop
cmp %rdi, %rdi
lea addresses_UC_ht+0x15523, %rsi
lea addresses_A_ht+0x4a6b, %rdi
nop
add $48642, %r14
mov $1, %rcx
rep movsb
and %rbp, %rbp
lea addresses_UC_ht+0xa92b, %rdi
nop
nop
nop
nop
nop
sub %r8, %r8
mov $0x6162636465666768, %rsi
movq %rsi, (%rdi)
nop
nop
nop
nop
xor $51675, %r15
lea addresses_A_ht+0x194db, %rcx
nop
nop
nop
nop
nop
dec %rbp
and $0xffffffffffffffc0, %rcx
movaps (%rcx), %xmm4
vpextrq $1, %xmm4, %r15
nop
nop
nop
and $65188, %rsi
lea addresses_normal_ht+0x133ab, %rsi
lea addresses_A_ht+0x1a1ab, %rdi
clflush (%rdi)
xor %r10, %r10
mov $70, %rcx
rep movsl
nop
nop
dec %rdi
lea addresses_D_ht+0x1492b, %rbp
nop
xor $38687, %rcx
vmovups (%rbp), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rsi
add %rsi, %rsi
lea addresses_WT_ht+0x87a1, %rsi
lea addresses_D_ht+0x1997b, %rdi
nop
nop
nop
nop
nop
and $61118, %rbp
mov $74, %rcx
rep movsw
xor %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %rax
push %rcx
push %rdx
push %rsi

// Load
lea addresses_A+0x19fd8, %r11
nop
nop
nop
nop
nop
dec %r15
movaps (%r11), %xmm2
vpextrq $1, %xmm2, %rdx
nop
nop
nop
nop
nop
cmp %rax, %rax

// Store
lea addresses_normal+0x133ab, %rcx
nop
nop
nop
cmp %r8, %r8
mov $0x5152535455565758, %rax
movq %rax, %xmm1
vmovups %ymm1, (%rcx)
cmp $17504, %r11

// Faulty Load
lea addresses_RW+0x19bab, %r15
and $23303, %rsi
movb (%r15), %al
lea oracles, %r15
and $0xff, %rax
shlq $12, %rax
mov (%r15,%rax,1), %rax
pop %rsi
pop %rdx
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 6, 'same': True, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 3, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'32': 366}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
