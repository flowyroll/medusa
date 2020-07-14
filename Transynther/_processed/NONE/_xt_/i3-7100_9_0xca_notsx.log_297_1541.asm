.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x60b5, %rsi
lea addresses_D_ht+0x4da1, %rdi
nop
nop
add $58054, %r11
mov $57, %rcx
rep movsw
nop
nop
nop
add $11035, %r9
lea addresses_WT_ht+0x73d, %rbx
clflush (%rbx)
xor $38188, %rax
movb $0x61, (%rbx)
nop
dec %rcx
lea addresses_WT_ht+0x1707d, %rax
nop
nop
nop
nop
sub $24060, %rcx
mov (%rax), %esi
nop
nop
nop
nop
nop
add $21472, %r9
lea addresses_WT_ht+0xd67d, %rsi
clflush (%rsi)
nop
cmp %r11, %r11
mov (%rsi), %ecx
nop
nop
mfence
lea addresses_D_ht+0x387d, %rsi
lea addresses_A_ht+0x1087d, %rdi
nop
nop
nop
and %r9, %r9
mov $26, %rcx
rep movsw
nop
nop
nop
xor %rdi, %rdi
lea addresses_WC_ht+0xa07d, %rbx
nop
add %rdi, %rdi
and $0xffffffffffffffc0, %rbx
movaps (%rbx), %xmm4
vpextrq $1, %xmm4, %r11
nop
nop
nop
nop
cmp %r11, %r11
lea addresses_normal_ht+0x1a1fd, %rcx
clflush (%rcx)
nop
nop
nop
cmp %rbx, %rbx
mov $0x6162636465666768, %rax
movq %rax, %xmm3
vmovups %ymm3, (%rcx)
nop
nop
nop
nop
inc %rsi
lea addresses_D_ht+0x10fd, %rcx
sub $49054, %rsi
movups (%rcx), %xmm6
vpextrq $1, %xmm6, %rdi
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_WC_ht+0x9efd, %rsi
nop
nop
and $30309, %rcx
mov (%rsi), %bx
nop
nop
nop
nop
dec %r11
lea addresses_WC_ht+0xf7f5, %rbx
nop
nop
nop
sub $9367, %rcx
mov $0x6162636465666768, %rax
movq %rax, %xmm5
and $0xffffffffffffffc0, %rbx
vmovntdq %ymm5, (%rbx)
nop
nop
nop
nop
cmp $29783, %r9
lea addresses_WT_ht+0x100fd, %rcx
nop
nop
xor %r11, %r11
mov (%rcx), %si
nop
nop
nop
nop
cmp $65304, %rdi
lea addresses_UC_ht+0x1a55d, %rsi
lea addresses_normal_ht+0x1527d, %rdi
nop
nop
nop
nop
sub $44480, %r8
mov $50, %rcx
rep movsb
sub %rcx, %rcx
lea addresses_WC_ht+0x19f01, %rax
nop
nop
nop
cmp %r8, %r8
mov $0x6162636465666768, %rcx
movq %rcx, (%rax)
nop
nop
nop
nop
nop
and $6752, %r11
lea addresses_UC_ht+0x159cd, %rsi
lea addresses_WT_ht+0x1747d, %rdi
clflush (%rsi)
cmp $2430, %rbx
mov $4, %rcx
rep movsl
nop
nop
nop
nop
nop
sub %r8, %r8
lea addresses_WT_ht+0xc77d, %rsi
lea addresses_WT_ht+0x8335, %rdi
nop
nop
sub $43505, %r11
mov $85, %rcx
rep movsb
and %r9, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r8
push %r9
push %rax
push %rbx
push %rdi
push %rdx

// Store
mov $0x57d702000000067d, %rdx
nop
add %r8, %r8
mov $0x5152535455565758, %rdi
movq %rdi, %xmm3
vmovups %ymm3, (%rdx)
nop
nop
nop
nop
nop
and %r9, %r9

// Faulty Load
lea addresses_D+0xa07d, %rdx
nop
nop
nop
and $60617, %r9
mov (%rdx), %bx
lea oracles, %rax
and $0xff, %rbx
shlq $12, %rbx
mov (%rax,%rbx,1), %rbx
pop %rdx
pop %rdi
pop %rbx
pop %rax
pop %r9
pop %r8
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 7, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': True, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'36': 297}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
