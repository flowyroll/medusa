.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xb051, %r12
and $4351, %rdi
movb $0x61, (%r12)
nop
nop
nop
and $60263, %rbx
lea addresses_WC_ht+0x93a6, %rsi
lea addresses_A_ht+0x6c02, %rdi
clflush (%rsi)
cmp %r9, %r9
mov $54, %rcx
rep movsw
nop
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_WT_ht+0xbfa6, %rsi
lea addresses_WC_ht+0xe671, %rdi
nop
nop
cmp %rbx, %rbx
mov $108, %rcx
rep movsl
nop
cmp $53387, %r10
lea addresses_D_ht+0x86de, %rcx
nop
cmp $5511, %rdi
mov $0x6162636465666768, %r10
movq %r10, %xmm2
movups %xmm2, (%rcx)
nop
nop
add $32465, %rdi
lea addresses_WC_ht+0x139a6, %rcx
nop
nop
nop
nop
nop
sub $59166, %rsi
movb (%rcx), %r10b
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_UC_ht+0x125a6, %rdi
sub %rbx, %rbx
mov $0x6162636465666768, %rcx
movq %rcx, (%rdi)
cmp $64858, %rsi
lea addresses_normal_ht+0x131a6, %rdi
nop
nop
nop
nop
add %rbx, %rbx
vmovups (%rdi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r10
nop
nop
nop
nop
add %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r9
push %rax
push %rbx
push %rdi
push %rdx

// Store
lea addresses_WC+0xac26, %r10
nop
nop
nop
nop
dec %rax
movb $0x51, (%r10)
nop
cmp %r9, %r9

// Load
lea addresses_D+0x100a6, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
sub $3811, %r9
movb (%rbx), %dl
nop
nop
nop
nop
nop
cmp %r10, %r10

// Load
lea addresses_WT+0x47a6, %rdi
nop
nop
nop
nop
nop
and %r11, %r11
mov (%rdi), %ax
nop
add %rdx, %rdx

// Faulty Load
mov $0xba6, %rbx
nop
nop
nop
nop
nop
xor $49192, %r10
movb (%rbx), %al
lea oracles, %rbx
and $0xff, %rax
shlq $12, %rax
mov (%rbx,%rax,1), %rax
pop %rdx
pop %rdi
pop %rbx
pop %rax
pop %r9
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_P'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_P'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'00': 1}
00
*/
