.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1254f, %rsi
lea addresses_UC_ht+0x1e957, %rdi
nop
nop
nop
and $55534, %r11
mov $33, %rcx
rep movsl
nop
nop
and $42924, %r13
lea addresses_WC_ht+0xcd8f, %rsi
lea addresses_D_ht+0x35af, %rdi
nop
nop
nop
dec %r14
mov $30, %rcx
rep movsq
nop
nop
sub %r11, %r11
lea addresses_A_ht+0xd54f, %r11
add $891, %r10
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
movups %xmm6, (%r11)
nop
nop
nop
nop
nop
and %r14, %r14
lea addresses_WT_ht+0xb7d7, %rdi
nop
inc %r10
movw $0x6162, (%rdi)
nop
nop
nop
nop
nop
and %r14, %r14
lea addresses_WT_ht+0xa14f, %r14
nop
nop
nop
nop
nop
inc %rcx
movb $0x61, (%r14)
cmp %rdi, %rdi
lea addresses_WT_ht+0xf24f, %rsi
nop
nop
nop
add %r10, %r10
movb (%rsi), %r11b
sub %rsi, %rsi
lea addresses_D_ht+0x1134f, %rcx
and $52077, %r14
mov (%rcx), %si
nop
nop
nop
nop
nop
sub $11618, %r11
lea addresses_normal_ht+0xdb27, %rdi
nop
nop
cmp %r14, %r14
mov $0x6162636465666768, %r11
movq %r11, (%rdi)
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0x8b4f, %rdi
nop
nop
nop
nop
nop
xor %rcx, %rcx
mov $0x6162636465666768, %r14
movq %r14, %xmm6
and $0xffffffffffffffc0, %rdi
vmovntdq %ymm6, (%rdi)
nop
nop
nop
nop
nop
sub $54780, %r10
lea addresses_WT_ht+0xc383, %rsi
nop
inc %r11
mov (%rsi), %r13w
nop
nop
nop
nop
nop
inc %r11
lea addresses_normal_ht+0xf34f, %rsi
lea addresses_WT_ht+0xf8f, %rdi
nop
nop
nop
nop
nop
and $3885, %r8
mov $114, %rcx
rep movsl
xor %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_RW+0x122ff, %rsi
lea addresses_D+0x1d54f, %rdi
nop
nop
nop
nop
nop
xor $54578, %rbp
mov $56, %rcx
rep movsq
nop
xor %rdx, %rdx

// Faulty Load
lea addresses_RW+0xdb4f, %r8
clflush (%r8)
nop
nop
sub %rsi, %rsi
vmovaps (%r8), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rcx
lea oracles, %rbp
and $0xff, %rcx
shlq $12, %rcx
mov (%rbp,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_RW', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 32, 'AVXalign': True, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'32': 19924, '00': 1701, '48': 75, '61': 48, '44': 59, '49': 3, '46': 14, '80': 1, '25': 1, '68': 1, '91': 2}
32 00 00 00 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 00 00 00 00 48 32 00 00 00 32 32 32 00 32 32 32 32 00 32 00 32 00 61 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 00 00 32 00 00 00 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 00 00 32 00 32 00 32 00 32 00 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 00 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 00 00 00 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 00 44 32 32 32 32 00 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 00 00 00 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 00 32 32 00 48 00 00 00 00 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 00 00 00 00 49 00 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 00 32 00 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 00 32 00 00 00 00 32 00 00 32 32 32 32 32 32 32 32 32 32 32 32 00 00 48 32 00 00 32 32 32 00 32 00 00 32 32 32 00 32 32 32 32 00 00 32 32 32 00 32 00 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 00 32 00 32 44 00 32 00 32 00 32 32 32 32 32 00 32 32 32 32 32 32 32 32 00 00 00 32 61 32 32 32 00 00 32 32 00 32 00 00 00 00 32 32 00 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 48 32 00 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 61 32 32 32 32 48 32 00 32 32 32 00 46 32 32 32 32 32 32 32 32 32 32 00 00 44 32 32 00 00 32 00 32 32 32 00 00 32 32 00 32 32 32 00 48 32 00
*/
