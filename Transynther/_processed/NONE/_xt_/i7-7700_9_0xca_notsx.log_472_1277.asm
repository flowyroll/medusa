.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0xd6aa, %rsi
lea addresses_normal_ht+0x7d04, %rdi
inc %r9
mov $5, %rcx
rep movsb
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_normal_ht+0x1b78a, %rdi
nop
xor $61546, %rsi
mov $0x6162636465666768, %r9
movq %r9, %xmm1
vmovups %ymm1, (%rdi)
nop
nop
dec %rdi
lea addresses_WC_ht+0x518a, %rcx
nop
nop
nop
xor $25897, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, (%rcx)
nop
nop
nop
sub $65533, %rcx
lea addresses_WC_ht+0xbf0a, %rsi
lea addresses_normal_ht+0x478a, %rdi
nop
nop
nop
xor $56015, %rbx
mov $30, %rcx
rep movsb
nop
nop
nop
add %rcx, %rcx
lea addresses_UC_ht+0xb84a, %rax
nop
nop
dec %rdi
movw $0x6162, (%rax)
cmp %rbx, %rbx
lea addresses_WT_ht+0x6eea, %rsi
lea addresses_UC_ht+0x740a, %rdi
clflush (%rdi)
nop
nop
nop
xor $38562, %rax
mov $120, %rcx
rep movsq
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_normal_ht+0x178a, %rsi
lea addresses_D_ht+0x862d, %rdi
nop
nop
nop
nop
nop
cmp $30122, %rdx
mov $54, %rcx
rep movsw
nop
nop
xor %rsi, %rsi
lea addresses_normal_ht+0x5b8a, %rdx
nop
nop
nop
nop
lfence
mov $0x6162636465666768, %rax
movq %rax, %xmm6
and $0xffffffffffffffc0, %rdx
vmovaps %ymm6, (%rdx)
nop
nop
nop
nop
xor $2934, %rbx
lea addresses_WC_ht+0x80e5, %rcx
clflush (%rcx)
nop
nop
nop
xor $22963, %rsi
mov (%rcx), %rdi
nop
nop
cmp $52399, %r9
lea addresses_A_ht+0x1924a, %rsi
lea addresses_D_ht+0x478a, %rdi
add %r13, %r13
mov $48, %rcx
rep movsb
nop
xor %rbx, %rbx
lea addresses_WC_ht+0x848a, %rdi
nop
nop
nop
sub $28764, %r13
mov $0x6162636465666768, %r9
movq %r9, %xmm2
movups %xmm2, (%rdi)
nop
nop
nop
sub $56510, %rdx
lea addresses_WT_ht+0x7278, %rsi
lea addresses_D_ht+0x4a43, %rdi
nop
xor $32418, %r13
mov $37, %rcx
rep movsw
nop
dec %rax
lea addresses_A_ht+0x1248a, %rsi
lea addresses_D_ht+0x15d8a, %rdi
nop
nop
nop
nop
sub $39196, %r13
mov $66, %rcx
rep movsq
nop
nop
nop
cmp %rcx, %rcx
lea addresses_UC_ht+0x6c9c, %rdi
clflush (%rdi)
and $3566, %r13
mov (%rdi), %r9d
nop
nop
nop
nop
nop
xor $55821, %r9
lea addresses_WC_ht+0xf38a, %rsi
lea addresses_normal_ht+0x17b6a, %rdi
nop
and %rdx, %rdx
mov $42, %rcx
rep movsw
nop
nop
nop
nop
cmp $26170, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_WC+0xca22, %rcx
nop
nop
nop
cmp $24281, %r11
movaps (%rcx), %xmm0
vpextrq $0, %xmm0, %rsi
nop
nop
xor $1368, %r11

// Store
lea addresses_PSE+0xe78a, %rdi
nop
nop
nop
cmp %rdx, %rdx
movl $0x51525354, (%rdi)
add %rsi, %rsi

// Faulty Load
lea addresses_WT+0x17b8a, %r14
nop
nop
nop
and %rdi, %rdi
movb (%r14), %dl
lea oracles, %r14
and $0xff, %rdx
shlq $12, %rdx
mov (%r14,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 2, 'same': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 10, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 0, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'39': 472}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
