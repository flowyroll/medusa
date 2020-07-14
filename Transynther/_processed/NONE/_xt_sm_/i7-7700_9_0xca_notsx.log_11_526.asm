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
lea addresses_WT_ht+0x2ce9, %rsi
lea addresses_WC_ht+0x832d, %rdi
nop
cmp $48077, %r12
mov $83, %rcx
rep movsb
nop
nop
nop
nop
dec %rdx
lea addresses_WC_ht+0xffa9, %r8
nop
add $17775, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, (%r8)
nop
and %rdx, %rdx
lea addresses_A_ht+0x19764, %rsi
lea addresses_UC_ht+0x12f49, %rdi
nop
nop
nop
nop
nop
and $53888, %rbp
mov $111, %rcx
rep movsq
nop
nop
nop
nop
cmp $26350, %rdx
lea addresses_WC_ht+0x23a9, %rbp
nop
nop
nop
sub %rsi, %rsi
movb $0x61, (%rbp)
and %rdx, %rdx
lea addresses_normal_ht+0x6be0, %rcx
nop
nop
add %r12, %r12
and $0xffffffffffffffc0, %rcx
movntdqa (%rcx), %xmm3
vpextrq $1, %xmm3, %rdx
nop
add $739, %rbp
lea addresses_WC_ht+0x90b9, %r12
nop
nop
nop
nop
xor %rdx, %rdx
mov (%r12), %r8
nop
nop
nop
dec %rdi
lea addresses_A_ht+0x15ba9, %r8
clflush (%r8)
nop
sub $35251, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, (%r8)
nop
nop
and %r8, %r8
lea addresses_D_ht+0x151a9, %rsi
lea addresses_WC_ht+0x1bfa9, %rdi
nop
nop
nop
sub $32208, %r11
mov $103, %rcx
rep movsb
nop
nop
nop
nop
xor $59782, %rbp
lea addresses_WT_ht+0x14c10, %rsi
lea addresses_D_ht+0x1b2cd, %rdi
nop
nop
nop
nop
xor %r12, %r12
mov $82, %rcx
rep movsw
nop
nop
inc %rdi
lea addresses_WC_ht+0x55e9, %rdi
nop
nop
nop
add %r11, %r11
movb $0x61, (%rdi)
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_WC_ht+0x2ba9, %rdx
nop
nop
nop
and $5140, %r12
movb (%rdx), %r8b
nop
nop
nop
nop
nop
and %r11, %r11
lea addresses_normal_ht+0x3241, %rbp
nop
sub $2258, %rcx
movw $0x6162, (%rbp)
nop
nop
nop
nop
nop
and $9022, %rdx
lea addresses_A_ht+0x15069, %r12
nop
nop
inc %rdi
mov (%r12), %esi
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_A_ht+0x108f5, %rbp
nop
cmp $35428, %r12
movb $0x61, (%rbp)
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_D_ht+0xe9ad, %rsi
lea addresses_normal_ht+0x1aaa9, %rdi
nop
nop
nop
nop
add $38447, %r8
mov $85, %rcx
rep movsq
nop
nop
nop
nop
nop
add %rdx, %rdx
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
push %r15
push %r8
push %r9
push %rax
push %rbp
push %rcx
push %rdi

// Store
lea addresses_RW+0xfba9, %rbp
nop
nop
sub $21169, %r15
movb $0x51, (%rbp)
nop
nop
nop
nop
nop
sub %rax, %rax

// Store
lea addresses_A+0x1bba9, %r9
clflush (%r9)
nop
xor %rdi, %rdi
mov $0x5152535455565758, %r15
movq %r15, %xmm1
vmovups %ymm1, (%r9)
nop
nop
nop
nop
and $9072, %rbp

// Load
mov $0x54be00000001a9, %rdi
nop
nop
nop
cmp $28417, %r8
movb (%rdi), %r9b
add $19489, %rcx

// Load
mov $0xc12, %r8
nop
nop
nop
nop
add $32561, %rcx
mov (%r8), %bp
nop
nop
nop
nop
nop
and %rax, %rax

// Store
lea addresses_WC+0xe969, %r9
nop
nop
nop
and %r8, %r8
movw $0x5152, (%r9)
nop
nop
nop
nop
nop
sub %rax, %rax

// Faulty Load
lea addresses_A+0x1bba9, %rbp
nop
nop
nop
sub $37759, %rcx
mov (%rbp), %rax
lea oracles, %r8
and $0xff, %rax
shlq $12, %rax
mov (%r8,%rax,1), %rax
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'src': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_P'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 6, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 1, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 0, 'same': True, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 9, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 3, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'58': 11}
58 58 58 58 58 58 58 58 58 58 58
*/
