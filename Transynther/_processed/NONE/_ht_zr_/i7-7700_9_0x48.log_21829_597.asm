.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1602f, %rsi
nop
inc %r14
movl $0x61626364, (%rsi)
cmp %rdx, %rdx
lea addresses_A_ht+0x1b06f, %rsi
lea addresses_D_ht+0x1236f, %rdi
nop
add %r10, %r10
mov $85, %rcx
rep movsb
nop
and $61983, %rdi
lea addresses_A_ht+0xdc6f, %rsi
lea addresses_normal_ht+0x1b915, %rdi
nop
nop
add %r14, %r14
mov $83, %rcx
rep movsq
xor $36480, %rcx
lea addresses_A_ht+0x1188f, %rdi
add %r10, %r10
mov (%rdi), %si
lfence
lea addresses_A_ht+0x9c6f, %r8
nop
nop
nop
nop
nop
xor $7184, %rcx
vmovups (%r8), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rdx
nop
nop
nop
and %rdx, %rdx
lea addresses_D_ht+0x1ad0f, %rsi
lea addresses_UC_ht+0x1186f, %rdi
nop
nop
nop
sub %rax, %rax
mov $51, %rcx
rep movsw
nop
nop
nop
nop
cmp $63798, %r10
lea addresses_A_ht+0xd06f, %rdi
clflush (%rdi)
nop
nop
xor $10732, %r14
mov (%rdi), %si
nop
nop
nop
nop
cmp $64412, %rax
lea addresses_UC_ht+0x6f, %rcx
nop
nop
nop
nop
nop
and %rdi, %rdi
and $0xffffffffffffffc0, %rcx
vmovntdqa (%rcx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r14
nop
nop
nop
nop
nop
inc %r10
lea addresses_normal_ht+0x1446f, %rsi
lea addresses_A_ht+0x346f, %rdi
nop
inc %rax
mov $87, %rcx
rep movsb
nop
nop
inc %rdx
lea addresses_A_ht+0x1e26f, %r14
add %rdx, %rdx
mov $0x6162636465666768, %r10
movq %r10, %xmm7
movups %xmm7, (%r14)
add %r8, %r8
lea addresses_D_ht+0x856f, %r8
nop
cmp %rax, %rax
movl $0x61626364, (%r8)
nop
nop
cmp %r14, %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %r9
push %rbx
push %rsi

// Load
lea addresses_WC+0x3b6f, %rsi
nop
nop
nop
nop
sub %r11, %r11
mov (%rsi), %r9
nop
nop
nop
nop
dec %rbx

// Faulty Load
lea addresses_A+0xc46f, %r11
nop
cmp $7778, %rsi
vmovups (%r11), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r9
lea oracles, %rbx
and $0xff, %r9
shlq $12, %r9
mov (%rbx,%r9,1), %r9
pop %rsi
pop %rbx
pop %r9
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 8, 'size': 8, 'same': True, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 5, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 3, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 11, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 9, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 7, 'size': 4, 'same': False, 'NT': False}}
{'47': 35, '44': 10324, '45': 12, '46': 9293, '00': 2165}
45 46 46 44 00 44 46 44 47 46 46 46 44 44 44 46 44 44 46 44 46 44 46 46 44 46 44 46 44 44 46 46 00 46 46 44 44 44 46 46 46 44 44 44 44 44 00 46 46 44 44 46 46 46 46 46 46 44 46 46 44 46 44 44 44 44 46 46 00 46 44 44 46 44 46 46 00 44 46 46 44 00 44 00 46 46 44 44 46 46 44 44 44 46 46 46 46 46 46 46 46 46 44 44 44 44 46 44 46 46 44 46 44 44 46 44 46 46 44 44 44 44 00 46 46 44 44 00 46 46 44 44 46 44 46 46 46 44 00 44 46 46 44 44 44 44 46 46 44 44 44 46 46 46 46 46 46 44 44 00 44 46 46 46 44 46 44 00 46 44 46 44 44 44 46 46 46 00 46 46 00 46 46 44 44 46 46 46 46 46 46 44 47 46 44 46 46 46 44 44 44 46 46 44 46 46 46 44 46 00 44 44 44 46 44 00 46 44 44 44 44 44 44 44 46 46 46 47 00 44 44 46 44 46 00 44 44 46 44 44 46 46 44 46 44 46 46 00 46 46 44 46 44 44 47 46 46 46 46 46 00 46 46 44 44 44 00 44 46 44 44 44 44 46 44 44 44 44 46 46 46 46 46 44 44 00 46 46 44 46 44 44 46 46 44 00 00 46 46 00 44 46 46 46 46 46 46 44 46 46 46 44 46 44 44 44 46 46 44 46 46 44 44 44 46 44 44 00 46 44 44 46 44 46 44 00 44 00 44 00 46 46 44 44 46 46 46 44 46 46 46 44 44 44 00 46 44 46 00 46 44 44 44 00 46 46 44 46 44 44 44 00 46 44 44 44 00 46 44 44 46 44 46 44 46 46 44 44 44 44 44 44 00 44 00 46 00 46 46 46 46 44 46 44 46 46 44 44 44 44 44 46 46 46 44 46 44 44 00 44 46 44 44 00 46 46 44 44 46 44 44 46 46 44 44 00 46 46 00 44 46 46 44 44 44 44 44 44 44 44 46 46 44 46 46 46 46 46 46 46 46 46 44 44 46 44 44 44 44 44 46 46 44 44 46 46 44 44 44 46 44 00 46 46 44 44 44 46 44 44 44 44 44 44 44 44 44 00 46 46 00 46 46 44 44 44 44 46 44 46 44 46 46 44 44 44 46 46 44 46 46 44 46 46 46 46 46 44 44 46 00 44 46 46 00 46 46 44 44 46 44 46 44 00 46 46 44 46 44 44 44 44 44 00 46 44 00 44 00 46 46 44 44 00 46 46 00 46 46 44 44 44 46 44 00 44 46 44 44 46 46 46 44 44 44 46 46 46 44 00 46 00 44 46 46 46 00 46 46 00 44 46 46 46 46 44 44 46 44 46 46 44 46 46 44 46 44 44 00 46 46 44 44 44 00 44 46 46 44 44 00 46 46 46 00 44 46 46 00 44 44 44 46 44 44 00 46 46 44 46 44 44 44 44 44 44 44 46 46 46 44 44 44 44 44 44 46 46 44 46 46 44 46 44 44 00 46 44 44 46 00 46 44 44 00 46 46 46 46 44 46 46 44 44 44 44 44 44 00 44 46 00 44 44 46 00 44 46 46 46 44 44 46 46 46 46 44 00 46 46 46 44 44 44 44 44 44 46 46 46 44 00 44 00 44 00 46 46 44 44 46 44 46 44 44 44 00 44 44 00 44 46 44 44 46 44 44 00 46 46 44 46 46 46 44 44 46 46 46 44 44 46 46 44 46 46 44 44 46 44 46 44 44 46 44 44 44 44 44 44 44 44 44 00 46 46 46 44 46 44 44 46 00 46 44 46 44 44 44 44 46 46 46 46 46 00 44 44 44 44 44 46 44 44 44 00 46 00 46 46 44 44 46 44 46 46 44 44 00 46 46 44 44 44 44 44 44 00 46 44 46 46 44 46 44 44 44 44 44 44 46 44 46 44 00 46 46 44 44 44 46 44 00 44 46 44 44 44 44 44 00 46 46 44 44 44 44 00 44 44 00 44 46 46 44 44 44 44 44 46 46 45 46 46 44 44 46 44 44 44 44 44 46 44 44 44 44 44 44 46 44 44 00 46 46 44 44 00 46 46 44 44 44 46 46 46 46 44 44 46 46 46 46 46 46 44 46 00 46 46 00 46 46 46 46 46 44 44 44 44 44 46 44 44 00 46 46 44 44 44 44 44 44 46 46 46 46 46 46 44 46 46 46 00 44 44 44 44 00 44 46 46 46 44 00 44 46 00 46 46
*/
