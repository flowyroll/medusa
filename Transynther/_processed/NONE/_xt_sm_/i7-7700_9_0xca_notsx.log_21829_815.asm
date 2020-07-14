.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x10f1c, %rcx
nop
nop
nop
nop
nop
add %rsi, %rsi
movl $0x61626364, (%rcx)
nop
nop
nop
nop
nop
sub %r11, %r11
lea addresses_A_ht+0x1dfa4, %rax
sub %r11, %r11
movw $0x6162, (%rax)
nop
nop
nop
sub $44972, %rcx
lea addresses_WC_ht+0xfb3c, %rsi
and %r12, %r12
movb (%rsi), %al
nop
xor %rdx, %rdx
lea addresses_WT_ht+0x6aca, %rax
nop
nop
nop
xor %r11, %r11
movups (%rax), %xmm2
vpextrq $0, %xmm2, %rdx
nop
nop
nop
cmp %r12, %r12
lea addresses_WT_ht+0x112ec, %rdx
nop
add %r12, %r12
mov (%rdx), %eax
nop
nop
nop
nop
add $43079, %r10
lea addresses_WT_ht+0x1a0ec, %rdx
nop
nop
nop
nop
nop
xor $746, %rax
vmovups (%rdx), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rsi
nop
nop
nop
sub $38148, %r11
lea addresses_UC_ht+0x943c, %rsi
lea addresses_normal_ht+0x9eec, %rdi
nop
and $17210, %r11
mov $37, %rcx
rep movsb
nop
nop
add %r12, %r12
lea addresses_UC_ht+0x289c, %rax
clflush (%rax)
nop
nop
nop
nop
xor %r10, %r10
movb (%rax), %cl
sub %rcx, %rcx
lea addresses_WT_ht+0x1d0ec, %rsi
lea addresses_A_ht+0x1bdfc, %rdi
nop
nop
sub $38810, %rax
mov $71, %rcx
rep movsb
nop
nop
nop
nop
nop
xor $4636, %rsi
lea addresses_normal_ht+0x12278, %rsi
nop
nop
nop
nop
cmp $37725, %rax
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
movups %xmm5, (%rsi)
nop
nop
add %r12, %r12
lea addresses_WT_ht+0x10ad0, %rsi
lea addresses_D_ht+0xc4ec, %rdi
inc %r12
mov $96, %rcx
rep movsq
nop
add $55904, %rsi
lea addresses_D_ht+0x1edec, %rcx
nop
sub $20028, %r12
mov $0x6162636465666768, %rdx
movq %rdx, %xmm2
and $0xffffffffffffffc0, %rcx
movntdq %xmm2, (%rcx)
nop
nop
xor $59627, %rsi
lea addresses_WT_ht+0x10fdc, %rdx
sub $50357, %r11
movb $0x61, (%rdx)
nop
and $1306, %rdx
lea addresses_WC_ht+0x1b6c, %rdx
nop
nop
dec %r11
mov $0x6162636465666768, %rcx
movq %rcx, %xmm2
vmovups %ymm2, (%rdx)
nop
nop
nop
nop
inc %rax
lea addresses_WT_ht+0x1d054, %rcx
nop
sub %rax, %rax
movb $0x61, (%rcx)
nop
nop
nop
xor %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_UC+0xd7ec, %rax
nop
nop
nop
nop
nop
sub %rsi, %rsi
mov $0x5152535455565758, %r12
movq %r12, %xmm1
movups %xmm1, (%rax)
nop
nop
nop
nop
sub %rax, %rax

// Store
lea addresses_D+0x4f42, %r12
dec %r15
mov $0x5152535455565758, %r10
movq %r10, (%r12)
and %rax, %rax

// Store
lea addresses_normal+0x174ec, %r10
nop
nop
nop
nop
nop
inc %r15
movb $0x51, (%r10)
nop
sub %r10, %r10

// Store
lea addresses_WC+0x110ec, %r10
nop
sub %rax, %rax
mov $0x5152535455565758, %r12
movq %r12, (%r10)
nop
nop
nop
nop
sub %rsi, %rsi

// Load
lea addresses_D+0x190ec, %rbx
nop
nop
add %r15, %r15
mov (%rbx), %r12
nop
nop
nop
nop
xor %rax, %rax

// Load
lea addresses_WT+0x1b6b4, %rbx
nop
nop
nop
nop
sub %r15, %r15
mov (%rbx), %ax
nop
nop
xor %r9, %r9

// Store
lea addresses_A+0x70ec, %r10
nop
nop
xor $64001, %rax
mov $0x5152535455565758, %r12
movq %r12, %xmm7
vmovups %ymm7, (%r10)
add $38789, %rsi

// Store
lea addresses_normal+0xf8ec, %rax
nop
xor $43580, %rbx
movw $0x5152, (%rax)
nop
nop
nop
nop
nop
add %r9, %r9

// REPMOV
mov $0x28c, %rsi
lea addresses_normal+0x68ec, %rdi
clflush (%rsi)
nop
nop
xor %rbx, %rbx
mov $5, %rcx
rep movsq
nop
sub $64868, %rbx

// Load
lea addresses_normal+0x100ec, %rbx
nop
nop
nop
nop
and $32522, %r9
movups (%rbx), %xmm4
vpextrq $0, %xmm4, %rdi
cmp %rbx, %rbx

// Faulty Load
lea addresses_normal+0xf8ec, %rdi
nop
nop
nop
nop
nop
sub $50904, %r12
movb (%rdi), %cl
lea oracles, %rax
and $0xff, %rcx
shlq $12, %rcx
mov (%rax,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 1, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 2, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_P'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_normal'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 2, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 8, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'52': 21829}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
