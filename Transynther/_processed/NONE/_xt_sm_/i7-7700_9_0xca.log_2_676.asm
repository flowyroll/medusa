.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x208d, %rdx
nop
nop
nop
nop
nop
and %r15, %r15
mov $0x6162636465666768, %r11
movq %r11, (%rdx)
nop
nop
nop
nop
nop
inc %r10
lea addresses_A_ht+0xc3e5, %rsi
lea addresses_WC_ht+0x8dad, %rdi
nop
nop
nop
nop
nop
xor %rbp, %rbp
mov $79, %rcx
rep movsl
nop
nop
nop
nop
nop
add $3828, %rsi
lea addresses_UC_ht+0x1628d, %rdx
cmp %rcx, %rcx
mov (%rdx), %r15
nop
cmp %r11, %r11
lea addresses_UC_ht+0x5b8d, %rdi
nop
nop
nop
nop
sub %rsi, %rsi
movl $0x61626364, (%rdi)
nop
nop
xor $61065, %rbp
lea addresses_WC_ht+0xd08d, %rbp
nop
nop
and $43353, %rdx
movw $0x6162, (%rbp)
nop
nop
inc %rdx
lea addresses_UC_ht+0x5a45, %rsi
lea addresses_WC_ht+0x1d9f9, %rdi
clflush (%rsi)
nop
nop
nop
nop
dec %rbp
mov $74, %rcx
rep movsw
nop
nop
nop
and $39849, %rcx
lea addresses_UC_ht+0x408d, %r10
nop
nop
nop
nop
nop
add $32203, %rdx
mov (%r10), %di
nop
inc %rsi
lea addresses_WT_ht+0x104b3, %r15
nop
nop
nop
nop
xor %rdx, %rdx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
and $0xffffffffffffffc0, %r15
movaps %xmm7, (%r15)
nop
nop
nop
nop
nop
dec %r15
lea addresses_WT_ht+0xd50d, %rsi
lea addresses_WT_ht+0x888d, %rdi
nop
nop
nop
nop
add %r15, %r15
mov $20, %rcx
rep movsb
cmp $29126, %rcx
lea addresses_D_ht+0xbb0d, %rbp
cmp $31993, %r11
movb (%rbp), %r10b
nop
nop
nop
add $17586, %r11
lea addresses_A_ht+0xd88d, %rsi
lea addresses_normal_ht+0x18a8d, %rdi
nop
nop
nop
sub $32255, %rdx
mov $54, %rcx
rep movsw
nop
inc %rbp
lea addresses_WT_ht+0x1138d, %rsi
lea addresses_WT_ht+0xc4d, %rdi
nop
nop
nop
nop
nop
dec %r10
mov $114, %rcx
rep movsb
nop
nop
nop
sub %r11, %r11
lea addresses_D_ht+0x1a40d, %rsi
nop
nop
nop
nop
nop
inc %r15
movl $0x61626364, (%rsi)
nop
xor $41652, %r10
lea addresses_A_ht+0x862d, %rbp
add $39216, %rcx
vmovups (%rbp), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r15
nop
nop
nop
sub %r15, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rdx

// Store
lea addresses_WT+0x448d, %rcx
cmp $38806, %r13
mov $0x5152535455565758, %rdx
movq %rdx, (%rcx)
nop
nop
cmp $17108, %rdi

// Store
mov $0x5ec554000000048d, %rax
and %r8, %r8
movl $0x51525354, (%rax)
add $49852, %rax

// Store
lea addresses_A+0x1308d, %r8
nop
nop
cmp %r13, %r13
movb $0x51, (%r8)
nop
nop
nop
xor $44401, %rdi

// Store
mov $0x67535b000000048d, %rcx
nop
nop
nop
nop
dec %r14
movb $0x51, (%rcx)
inc %rax

// Store
lea addresses_A+0x1308d, %rdi
nop
nop
nop
nop
dec %r13
movw $0x5152, (%rdi)
dec %r14

// Faulty Load
lea addresses_A+0x1308d, %rax
clflush (%rax)
nop
nop
sub %r14, %r14
mov (%rax), %dx
lea oracles, %r13
and $0xff, %rdx
shlq $12, %rdx
mov (%r13,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': True, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_A'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': True, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': True, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': True, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 5, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'52': 2}
52 52
*/
