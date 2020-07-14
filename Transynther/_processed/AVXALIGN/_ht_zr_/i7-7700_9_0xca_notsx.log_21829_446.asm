.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1858e, %rdx
nop
nop
nop
cmp %r12, %r12
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
movups %xmm0, (%rdx)
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_WC_ht+0xaa75, %rsi
sub %rdx, %rdx
mov $0x6162636465666768, %r12
movq %r12, (%rsi)
cmp %rax, %rax
lea addresses_WC_ht+0x1090e, %r11
nop
nop
nop
nop
nop
sub $8153, %rbp
movl $0x61626364, (%r11)
nop
nop
and $8044, %r11
lea addresses_WC_ht+0x1ec0e, %rsi
lea addresses_A_ht+0x99ee, %rdi
nop
nop
add %r11, %r11
mov $42, %rcx
rep movsw
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_WT_ht+0x11e0e, %rdi
nop
cmp %rbp, %rbp
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
movups %xmm6, (%rdi)
nop
nop
nop
add $2225, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %rbp
push %rcx
push %rdi

// Load
lea addresses_PSE+0x28ae, %rcx
nop
sub $10413, %rbp
mov (%rcx), %r15

// Exception!!!
nop
nop
nop
nop
mov (0), %r10
nop
nop
cmp %rdi, %rdi

// Faulty Load
lea addresses_WT+0x1e0e, %r10
clflush (%r10)
nop
nop
nop
sub %rcx, %rcx
movaps (%r10), %xmm6
vpextrq $1, %xmm6, %rdi
lea oracles, %rbp
and $0xff, %rdi
shlq $12, %rdi
mov (%rbp,%rdi,1), %rdi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'src': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 2, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 1, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'00': 10212, '48': 11617}
00 00 00 00 00 00 48 48 00 00 00 00 48 48 48 48 48 48 00 00 00 48 00 48 48 48 00 00 48 00 48 00 48 48 00 48 00 48 48 00 48 48 00 00 48 48 00 00 00 48 00 48 00 48 48 48 48 48 48 48 48 00 48 48 00 48 48 48 00 48 00 00 48 00 00 00 48 00 48 00 48 00 00 48 48 00 00 48 48 00 48 48 48 48 00 00 00 00 48 48 00 48 00 00 00 48 48 48 00 48 48 00 00 48 48 48 48 48 00 00 48 48 00 00 48 48 48 00 00 00 48 48 00 48 48 00 48 48 00 00 00 00 48 48 00 00 48 00 48 48 48 48 48 48 00 48 48 00 00 00 48 48 00 00 00 48 48 48 00 48 48 00 48 00 48 48 00 00 00 48 48 48 00 48 00 48 00 48 00 00 48 48 00 00 00 48 00 00 48 00 48 48 00 48 00 48 48 48 48 48 00 48 48 00 48 00 00 48 48 00 48 00 00 48 48 48 00 00 00 00 00 48 00 48 00 48 00 00 00 48 00 00 00 48 00 48 00 48 48 48 00 48 48 00 48 48 00 00 00 48 48 48 00 48 48 48 00 00 00 48 00 00 48 48 48 00 00 48 48 48 48 48 48 48 00 00 48 48 48 48 48 48 00 48 00 48 00 48 48 48 48 00 48 48 48 00 48 48 48 00 00 48 48 00 00 48 48 00 48 00 48 00 00 48 00 48 48 00 48 48 48 48 00 00 48 48 00 48 48 00 00 00 48 00 48 48 48 00 48 48 00 48 00 00 48 00 48 00 00 48 48 00 00 00 00 00 48 48 00 48 00 00 48 48 00 00 48 48 48 48 00 00 48 48 00 00 48 00 00 00 48 00 48 48 00 00 48 00 00 48 48 48 00 48 00 48 48 00 00 00 48 00 48 48 00 48 00 00 00 00 48 48 48 48 48 48 48 48 48 00 00 00 48 48 48 48 00 48 00 48 00 48 48 48 00 00 48 00 48 48 48 48 48 48 48 48 00 00 48 48 48 48 00 48 00 48 48 00 00 48 00 00 48 48 48 48 48 48 48 00 48 48 00 48 00 00 48 00 00 00 48 48 48 00 48 48 00 48 48 00 48 48 00 48 00 48 48 00 00 00 48 48 48 48 48 00 48 00 00 48 00 48 00 00 48 48 48 00 48 48 00 00 48 48 48 48 00 48 00 48 00 00 48 48 00 00 48 48 00 00 48 48 00 00 00 00 48 48 00 48 00 00 00 00 00 00 00 48 00 00 48 48 00 48 00 48 48 00 48 48 00 00 48 48 48 48 48 00 48 48 48 00 48 00 00 48 48 48 00 48 48 48 48 00 00 48 48 00 00 48 00 00 48 48 48 48 48 48 00 48 48 00 48 00 00 48 00 00 48 48 00 00 00 48 00 48 00 00 00 48 00 48 48 00 00 48 48 48 48 00 00 00 48 48 00 00 00 48 48 00 48 48 48 00 00 48 48 00 48 48 48 48 00 00 48 00 48 00 00 00 00 00 48 48 00 00 00 00 48 00 48 00 00 48 48 48 48 00 00 48 48 00 00 00 48 48 48 48 00 48 00 00 48 48 00 00 48 00 48 48 00 00 48 00 48 00 48 00 48 48 48 48 48 48 48 48 48 00 48 48 48 00 48 48 48 00 00 00 48 48 00 48 00 48 48 48 48 48 00 00 00 00 48 48 00 48 00 48 48 00 48 00 00 48 00 00 00 48 48 00 00 48 00 48 00 48 00 00 48 00 48 48 48 48 48 00 48 00 48 48 00 48 00 00 00 00 00 48 48 48 00 00 48 48 48 00 48 00 00 00 00 48 48 48 00 48 48 48 00 48 48 00 00 48 00 00 48 00 48 48 48 00 48 00 48 48 48 00 48 00 48 48 48 48 48 48 48 48 48 48 00 00 00 48 00 48 00 48 48 48 48 48 48 00 48 48 48 00 00 00 00 48 00 00 00 00 48 48 00 48 48 48 00 00 48 00 00 48 00 48 48 00 48 00 48 00 00 48 00 48 48 48 00 48 00 00 48 00 00 48 00 48 00 00 48 00 00 48 00 48 00 48 48 48 48 48 00 48 00 48 48 00 48 00 48 48 48 00 00 00 00 00 00 48 00 48 48 48 48 48 00 00 00 48 00 48 48 00 00 48 48 48 00 00 00 48 00 48 00 00 00 48 48 48 00 48 00 00 48 48 00 48 00 48 00 48 00 48 00 48
*/
