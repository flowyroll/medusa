.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1ddcf, %rcx
nop
nop
nop
nop
nop
xor $59840, %rdx
movb $0x61, (%rcx)
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WC_ht+0xf04f, %rsi
lea addresses_A_ht+0x59cf, %rdi
nop
add %r11, %r11
mov $9, %rcx
rep movsq
nop
nop
nop
nop
nop
dec %rsi
lea addresses_normal_ht+0x1d52f, %rsi
lea addresses_WC_ht+0x651f, %rdi
nop
nop
nop
nop
add $61341, %rbp
mov $48, %rcx
rep movsb
nop
nop
nop
xor $18992, %rbp
lea addresses_A_ht+0x689f, %rsi
lea addresses_D_ht+0x1a157, %rdi
clflush (%rsi)
nop
nop
nop
and %r11, %r11
mov $81, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $1834, %rsi
lea addresses_D_ht+0xdcab, %rdi
clflush (%rdi)
nop
nop
cmp $60922, %r12
mov $0x6162636465666768, %rbp
movq %rbp, (%rdi)
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0xbab3, %rsi
lea addresses_WC_ht+0xf74f, %rdi
clflush (%rsi)
nop
nop
dec %r8
mov $124, %rcx
rep movsl
nop
nop
nop
sub $6342, %rdi
lea addresses_WT_ht+0x1749f, %rsi
lea addresses_WT_ht+0x8fcf, %rdi
nop
nop
nop
nop
nop
sub %r12, %r12
mov $56, %rcx
rep movsl
nop
nop
nop
nop
xor $41275, %r12
lea addresses_WC_ht+0xe2cf, %rdi
clflush (%rdi)
nop
add %rsi, %rsi
movups (%rdi), %xmm4
vpextrq $0, %xmm4, %r12
nop
nop
nop
sub $47042, %rdi
lea addresses_UC_ht+0x68f7, %rbp
nop
nop
and %r12, %r12
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
movups %xmm0, (%rbp)
nop
nop
nop
cmp $5024, %r8
lea addresses_UC_ht+0xbf8f, %r12
nop
nop
inc %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
vmovups %ymm7, (%r12)
nop
nop
nop
cmp $62914, %rbp
lea addresses_UC_ht+0x91cf, %rcx
lfence
mov (%rcx), %rbp
add %rsi, %rsi
lea addresses_D_ht+0x143cf, %r12
nop
nop
nop
add %rdx, %rdx
movb $0x61, (%r12)
nop
nop
dec %r8
lea addresses_normal_ht+0xb2cf, %rcx
nop
nop
nop
nop
xor $10133, %rbp
movb $0x61, (%rcx)
dec %rsi
lea addresses_WC_ht+0x40cf, %r12
nop
cmp %rsi, %rsi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm3
and $0xffffffffffffffc0, %r12
vmovaps %ymm3, (%r12)
nop
nop
nop
nop
nop
cmp $6329, %rbp
lea addresses_normal_ht+0xffb9, %rsi
nop
nop
nop
nop
nop
add $32187, %r8
movl $0x61626364, (%rsi)
nop
lfence
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %rax
push %rbx
push %rdi

// Faulty Load
lea addresses_normal+0x75cf, %r13
clflush (%r13)
nop
nop
nop
nop
sub %r11, %r11
movups (%r13), %xmm7
vpextrq $1, %xmm7, %rdi
lea oracles, %r13
and $0xff, %rdi
shlq $12, %rdi
mov (%r13,%rdi,1), %rdi
pop %rdi
pop %rbx
pop %rax
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 9, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 4, 'same': True, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 6, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 8, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'34': 21829}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
