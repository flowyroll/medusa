.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1b5f, %rsi
lea addresses_WT_ht+0x29a2, %rdi
nop
nop
nop
nop
nop
inc %r11
mov $22, %rcx
rep movsb
nop
nop
nop
nop
sub %r13, %r13
lea addresses_UC_ht+0x5549, %r14
nop
nop
nop
nop
nop
cmp $51389, %rax
mov (%r14), %r11d
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_UC_ht+0x2737, %rsi
lea addresses_A_ht+0xdaaf, %rdi
nop
add $24266, %r14
mov $60, %rcx
rep movsq
dec %rax
lea addresses_WT_ht+0xb9c1, %rcx
nop
nop
nop
inc %r13
mov (%rcx), %rsi
nop
nop
nop
sub %r13, %r13
lea addresses_WT_ht+0x69cf, %rsi
lea addresses_WT_ht+0x17f11, %rdi
nop
nop
nop
nop
nop
dec %r8
mov $51, %rcx
rep movsb
nop
nop
nop
nop
and $44687, %rdi
lea addresses_WT_ht+0x150f, %r13
nop
nop
nop
nop
nop
and %rcx, %rcx
mov $0x6162636465666768, %r14
movq %r14, %xmm5
movups %xmm5, (%r13)
nop
sub $55079, %r14
lea addresses_WC_ht+0x10da5, %rax
nop
cmp $57768, %rsi
mov (%rax), %r11
nop
xor $15035, %rcx
lea addresses_normal_ht+0xe5ef, %rsi
lea addresses_normal_ht+0x6caf, %rdi
nop
nop
nop
inc %r14
mov $25, %rcx
rep movsl
nop
sub $49106, %r14
lea addresses_D_ht+0xf3b3, %r11
nop
nop
nop
nop
nop
and %rax, %rax
mov (%r11), %si
nop
nop
inc %rax
lea addresses_UC_ht+0x1b339, %r11
nop
inc %r8
and $0xffffffffffffffc0, %r11
vmovaps (%r11), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rax
nop
sub %r13, %r13
lea addresses_UC_ht+0x14b7, %r11
sub %r8, %r8
mov (%r11), %rax
sub $58919, %rsi
lea addresses_A_ht+0xb4af, %rsi
lea addresses_normal_ht+0x12eaf, %rdi
nop
nop
nop
inc %rax
mov $86, %rcx
rep movsl
nop
nop
nop
nop
cmp %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r9
push %rax
push %rbx
push %rcx
push %rsi

// Store
lea addresses_A+0xf62b, %r15
nop
nop
nop
nop
xor $20179, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, (%r15)
nop
sub %rbx, %rbx

// Store
lea addresses_D+0xccdf, %rbx
nop
nop
nop
nop
sub $47190, %r10
mov $0x5152535455565758, %r9
movq %r9, %xmm2
movups %xmm2, (%rbx)
nop
nop
nop
nop
nop
sub $36524, %r9

// Load
lea addresses_normal+0x1e98f, %rbx
clflush (%rbx)
nop
nop
nop
nop
add %rax, %rax
mov (%rbx), %r15
nop
nop
nop
sub %r9, %r9

// Faulty Load
lea addresses_US+0x104af, %rax
and %rbx, %rbx
movups (%rax), %xmm6
vpextrq $1, %xmm6, %r9
lea oracles, %rax
and $0xff, %r9
shlq $12, %r9
mov (%rax,%r9,1), %r9
pop %rsi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 4}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_US', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_WT_ht', 'congruent': 1}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': True, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 9}}
{'44': 3766, '45': 9888, '00': 8031, '47': 144}
44 00 00 00 45 45 00 45 00 45 44 45 45 00 44 45 44 45 00 44 45 00 45 45 00 00 45 00 00 00 45 44 00 45 45 45 45 00 45 44 45 00 45 45 00 45 00 44 00 45 44 00 44 45 44 45 00 45 00 45 45 45 45 00 00 45 00 45 00 45 00 45 00 45 00 45 45 45 45 45 00 44 45 00 00 45 44 45 00 45 45 45 45 00 45 00 45 00 45 00 00 00 45 45 00 44 45 45 45 00 00 45 45 00 45 00 44 45 00 44 45 00 00 45 00 45 44 00 44 45 00 44 45 00 45 00 00 45 00 45 00 45 44 45 44 00 44 00 45 44 45 00 45 45 00 45 00 45 45 00 44 00 45 45 44 45 00 44 45 47 00 45 45 00 44 45 00 44 45 00 45 00 44 45 00 00 00 44 45 47 00 45 00 45 00 45 45 00 45 00 44 45 00 45 00 00 45 00 45 44 00 45 44 00 00 00 45 00 45 00 44 45 00 45 00 45 00 44 45 45 44 45 00 45 45 00 45 00 00 00 45 45 00 00 45 00 44 00 00 45 45 00 45 00 45 44 45 45 00 44 45 44 00 00 45 45 00 45 45 44 45 45 00 00 00 00 45 00 45 45 45 44 45 45 44 45 45 44 45 00 44 45 00 45 00 00 45 44 45 00 00 45 45 00 00 45 44 45 45 00 44 45 44 45 44 45 00 45 00 44 45 47 45 45 00 45 00 45 45 00 45 45 00 45 44 45 45 45 00 44 45 00 44 45 44 00 45 45 00 45 00 45 44 45 44 45 00 45 00 45 45 45 00 45 00 45 45 00 44 45 00 44 45 00 45 00 44 00 45 45 00 45 45 00 44 45 00 44 45 45 00 44 45 00 45 00 44 45 00 45 45 00 45 00 45 45 00 44 45 00 45 44 45 45 45 45 45 00 44 45 44 45 00 44 45 45 45 45 45 00 44 45 00 45 45 44 45 00 44 45 00 45 00 44 00 45 00 45 00 45 00 45 45 44 45 00 44 45 00 45 00 45 44 45 44 45 44 45 00 44 45 45 45 45 45 00 44 45 44 45 00 44 45 00 44 00 44 45 00 45 00 44 00 45 00 00 00 00 45 00 00 45 44 00 44 45 00 45 00 45 00 44 45 00 00 45 00 45 00 45 45 00 00 45 00 45 44 45 45 44 45 45 45 44 45 00 45 45 45 00 00 00 45 45 00 45 44 45 00 44 45 45 45 00 00 45 00 44 00 45 45 00 00 45 00 45 44 45 00 45 45 00 45 00 45 45 00 45 00 45 45 45 45 00 44 45 00 45 45 44 45 00 44 00 44 45 00 44 45 45 45 00 00 45 45 00 45 45 45 00 00 45 00 45 45 00 45 45 00 44 45 00 45 45 00 45 44 45 00 44 45 00 00 44 00 45 44 45 45 45 00 44 45 00 44 00 44 45 00 45 00 45 00 45 45 45 45 00 44 45 00 00 44 45 00 44 45 00 45 00 45 45 45 45 00 44 45 00 44 45 00 45 00 00 45 00 00 45 00 00 45 00 00 45 45 00 45 00 45 45 00 44 00 45 45 00 45 00 44 45 00 44 45 44 45 45 00 00 45 00 45 44 45 45 00 45 47 00 00 44 45 00 44 45 00 00 45 00 00 00 44 45 45 00 45 45 45 45 00 44 45 44 45 00 44 00 45 47 00 45 44 45 44 45 00 45 00 00 45 00 44 45 00 44 45 00 45 45 00 44 00 45 00 45 00 00 45 44 45 00 45 00 45 45 45 00 44 45 00 45 00 00 45 00 45 00 00 45 45 00 45 44 00 44 45 00 45 00 45 00 45 45 00 45 00 44 45 00 00 45 00 45 00 45 00 45 44 00 00 45 45 00 45 00 44 00 45 00 45 44 45 45 00 44 45 00 44 00 44 45 00 44 45 00 45 00 45 44 45 45 44 45 45 00 00 00 45 45 00 45 44 45 44 45 00 00 45 44 00 44 45 00 45 00 45 45 45 00 45 00 00 45 00 00 00 45 00 45 44 00 44 00 45 44 45 00 44 45 45 45 00 45 44 45 00 45 44 45 00 44 00 00 45 45 00 00 45 45 00 45 00 45 45 00 45 00 44 00 00 00 45 00 00 00 45 44 45 00 44 45 00 45 45 00 45 45 45 00 44 45 00 44 45 00 45 00 44 00 45 44 45 45 00 00 00 44 45 00 45 00 44 45 44 00 45 00 00 45 44 45
*/
