.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1803b, %rbp
nop
nop
nop
cmp $9749, %rcx
movw $0x6162, (%rbp)
nop
nop
nop
cmp %r14, %r14
lea addresses_normal_ht+0xc173, %r10
nop
and $47509, %rax
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
movups %xmm3, (%r10)
nop
and %rcx, %rcx
lea addresses_D_ht+0xcffb, %rsi
lea addresses_WT_ht+0xb6bb, %rdi
nop
nop
nop
nop
xor %r10, %r10
mov $32, %rcx
rep movsw
nop
nop
nop
add $51633, %rdi
lea addresses_UC_ht+0x1dafb, %rdi
nop
nop
nop
nop
nop
sub %rcx, %rcx
movb (%rdi), %r13b
nop
nop
nop
nop
nop
cmp $29965, %rdi
lea addresses_WT_ht+0x9bfb, %rsi
lea addresses_D_ht+0x1a1ad, %rdi
nop
cmp $54445, %r10
mov $68, %rcx
rep movsl
nop
nop
nop
xor $3080, %r10
lea addresses_UC_ht+0x139fb, %rbp
nop
nop
nop
sub $33815, %r14
movups (%rbp), %xmm2
vpextrq $0, %xmm2, %rcx
nop
add %rdi, %rdi
lea addresses_normal_ht+0x14f3b, %rsi
lea addresses_D_ht+0x3ee1, %rdi
xor %rbp, %rbp
mov $22, %rcx
rep movsq
nop
sub $25512, %rbp
lea addresses_A_ht+0xae7b, %rbp
add %r13, %r13
mov (%rbp), %di
nop
nop
nop
nop
nop
add %r14, %r14
lea addresses_WC_ht+0xaa5b, %rax
clflush (%rax)
nop
nop
nop
nop
dec %rsi
vmovups (%rax), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r13
nop
nop
nop
nop
cmp $52485, %r10
lea addresses_A_ht+0x837b, %rcx
nop
nop
nop
nop
and %r14, %r14
mov $0x6162636465666768, %r13
movq %r13, %xmm2
vmovups %ymm2, (%rcx)
cmp $61757, %r14
lea addresses_WT_ht+0x127b, %r13
clflush (%r13)
nop
nop
nop
sub %rbp, %rbp
mov (%r13), %r14
nop
nop
nop
sub %rsi, %rsi
lea addresses_normal_ht+0x1ae5b, %rsi
lea addresses_UC_ht+0x5dfb, %rdi
sub %r14, %r14
mov $98, %rcx
rep movsw
nop
nop
nop
nop
xor $22561, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r15
push %rcx
push %rdi
push %rsi

// REPMOV
mov $0x1fb, %rsi
lea addresses_WT+0x1921e, %rdi
nop
nop
nop
add %r15, %r15
mov $55, %rcx
rep movsw
nop
and $64544, %rdi

// Load
lea addresses_PSE+0x66fb, %r15
cmp $61196, %r10
movups (%r15), %xmm3
vpextrq $1, %xmm3, %rcx
nop
nop
nop
nop
nop
and %rsi, %rsi

// Faulty Load
lea addresses_RW+0x57fb, %r11
nop
nop
nop
nop
sub $17382, %r13
movaps (%r11), %xmm6
vpextrq $1, %xmm6, %r10
lea oracles, %rsi
and $0xff, %r10
shlq $12, %r10
mov (%rsi,%r10,1), %r10
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 8, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_P', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT', 'congruent': 0, 'same': False}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_PSE', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 16, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'src': {'same': True, 'congruent': 8, 'NT': False, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'46': 19, '49': 3060, '48': 1, '00': 8000, '44': 10742, '47': 7}
00 44 44 44 00 00 44 00 00 00 49 00 44 00 49 00 44 44 00 44 00 44 44 44 44 44 00 49 00 49 49 44 44 44 44 00 44 00 00 49 00 49 44 00 49 44 44 44 44 44 44 44 00 44 44 49 00 44 44 44 00 00 49 49 44 44 00 00 00 44 44 00 00 00 00 49 44 00 00 00 00 44 44 44 44 00 44 00 00 00 49 00 44 49 44 00 49 00 49 44 00 49 44 44 00 00 44 00 44 44 00 00 49 44 44 44 44 00 49 49 44 00 44 44 00 00 49 44 44 44 44 00 44 44 00 00 44 44 44 00 00 44 44 00 49 00 00 44 44 49 00 00 44 44 44 44 44 49 44 44 49 00 00 00 00 00 44 44 49 00 49 00 49 44 49 00 44 44 00 00 00 00 00 44 44 00 44 44 44 00 49 49 44 44 44 44 44 00 44 00 44 00 44 44 44 00 00 00 00 44 00 00 44 44 00 49 44 44 44 44 00 44 44 00 44 49 00 00 49 00 44 00 00 44 44 49 44 00 44 00 44 44 00 44 00 49 44 00 00 44 44 44 44 44 44 44 44 44 44 00 00 00 49 00 44 00 00 00 00 00 49 00 00 49 00 44 44 00 44 00 00 44 00 00 44 44 00 49 00 49 44 00 44 00 44 44 00 00 00 00 44 44 44 49 44 44 49 44 00 49 44 00 49 44 49 00 49 44 44 00 49 49 44 44 44 44 00 00 44 00 00 00 00 49 00 00 00 49 44 44 00 44 44 44 00 44 00 00 00 49 00 00 44 44 00 44 44 44 44 44 44 00 49 00 00 00 44 49 00 44 44 00 49 44 44 44 00 49 49 00 00 00 49 44 00 00 44 00 00 49 49 00 44 00 44 44 44 00 44 44 44 00 44 00 44 44 00 44 00 44 49 00 44 00 00 00 44 00 00 44 44 44 44 44 44 44 44 44 44 44 49 00 00 00 00 00 00 49 00 00 00 00 49 44 44 44 44 44 44 44 00 44 00 44 44 44 49 00 00 49 49 00 44 00 49 44 49 00 00 44 00 44 44 44 44 00 00 44 44 00 00 44 44 44 44 44 49 49 49 44 44 00 00 44 49 44 00 00 00 00 00 44 44 44 44 44 44 00 00 44 00 00 49 44 49 49 44 44 44 44 00 44 44 00 44 44 00 00 00 49 44 44 44 44 44 44 00 44 44 00 44 44 49 44 00 44 44 44 00 49 00 00 44 44 00 44 44 44 00 00 44 00 00 44 49 44 00 49 44 00 44 44 00 00 00 49 49 00 00 44 44 00 44 44 00 44 44 44 00 44 44 49 44 00 00 00 00 44 44 00 44 00 00 44 00 00 49 00 49 44 00 00 00 44 44 00 00 44 44 00 49 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 00 00 00 00 49 44 44 00 00 49 44 00 00 00 00 44 49 49 49 00 44 00 49 00 00 44 44 44 00 44 44 00 00 44 00 00 49 49 44 44 44 49 44 44 44 44 49 44 49 44 44 44 44 00 00 44 44 44 44 44 00 44 49 00 44 44 44 00 00 44 00 00 44 44 00 00 44 44 44 49 44 44 44 44 44 44 44 44 44 44 00 00 44 00 49 00 00 49 44 44 44 00 49 49 44 44 44 46 44 44 49 00 00 00 44 00 44 00 44 00 44 00 44 44 44 00 49 00 44 00 44 44 49 44 00 44 44 00 00 44 44 00 44 00 49 49 49 00 49 00 49 00 00 00 00 44 49 00 49 49 00 00 00 00 00 44 44 44 44 00 49 00 00 44 00 44 44 44 44 00 00 44 00 00 44 00 00 49 00 00 49 44 44 49 00 00 00 44 00 49 00 44 00 00 00 44 00 44 44 44 00 44 00 00 49 44 44 00 49 00 00 00 49 00 00 44 44 44 00 49 49 00 44 44 00 49 00 49 44 00 00 44 00 44 44 44 00 49 49 00 00 00 44 44 44 44 44 44 44 00 49 49 00 49 00 44 44 00 44 00 00 49 00 00 49 00 00 44 44 00 44 00 44 44 00 44 44 44 49 44 00 44 44 00 44 44 44 44 00 44 44 44 00 00 00 44 00 00 44 44 44 44 44 00 44 44 44 00 49 44 44 44 44 44 00 49 00 49 00 00 44 00 00 44 44 44 44 44 00 44 49 44 44 00 49 44 00 44 00 44 00 00 49 49 44 44 00 44 44 44 00 00
*/
