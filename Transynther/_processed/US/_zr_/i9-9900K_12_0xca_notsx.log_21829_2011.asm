.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0xfde8, %rbp
nop
nop
nop
nop
cmp %rbx, %rbx
and $0xffffffffffffffc0, %rbp
movaps (%rbp), %xmm3
vpextrq $1, %xmm3, %r11
cmp $45235, %r11
lea addresses_UC_ht+0x196f4, %rdx
nop
xor %rcx, %rcx
movb (%rdx), %r9b
and $47453, %rbp
lea addresses_WC_ht+0x2e8, %rsi
lea addresses_WT_ht+0x16d68, %rdi
clflush (%rsi)
nop
nop
nop
xor $26507, %r9
mov $20, %rcx
rep movsw
nop
dec %rbx
lea addresses_WT_ht+0x1f68, %rsi
nop
dec %rcx
movl $0x61626364, (%rsi)
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_UC_ht+0x197b8, %rdx
nop
nop
sub %rdi, %rdi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm1
movups %xmm1, (%rdx)
nop
nop
nop
add %rbp, %rbp
lea addresses_normal_ht+0x193e8, %rbp
cmp $21754, %rdi
movb (%rbp), %cl
nop
inc %rbp
lea addresses_WT_ht+0x1ce28, %r9
nop
nop
nop
cmp $61022, %r11
mov (%r9), %cx
nop
nop
nop
nop
xor $32072, %rcx
lea addresses_WC_ht+0x17ee8, %rdi
nop
nop
nop
cmp %rbp, %rbp
mov $0x6162636465666768, %r11
movq %r11, %xmm1
and $0xffffffffffffffc0, %rdi
vmovntdq %ymm1, (%rdi)
and $62826, %rbx
lea addresses_UC_ht+0x1bf44, %rbx
clflush (%rbx)
nop
nop
dec %r9
mov $0x6162636465666768, %r11
movq %r11, (%rbx)
nop
nop
cmp $53277, %rcx
lea addresses_A_ht+0x2e8, %rsi
lea addresses_D_ht+0xcfbe, %rdi
nop
nop
nop
xor %rdx, %rdx
mov $0, %rcx
rep movsb
nop
dec %rcx
lea addresses_WT_ht+0x174e8, %rsi
nop
nop
sub $31404, %rbx
movl $0x61626364, (%rsi)
nop
nop
nop
nop
nop
cmp %r9, %r9
lea addresses_A_ht+0xd2e8, %rsi
lea addresses_WT_ht+0xf5e8, %rdi
nop
nop
add $60555, %rdx
mov $16, %rcx
rep movsl
nop
nop
nop
xor $49477, %rbx
lea addresses_normal_ht+0xcf9d, %rsi
lea addresses_D_ht+0xaa80, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
xor $46142, %rbx
mov $120, %rcx
rep movsw
nop
nop
nop
nop
mfence
lea addresses_WC_ht+0xd7c3, %rsi
lea addresses_WT_ht+0x29e8, %rdi
nop
nop
nop
cmp $14700, %rdx
mov $109, %rcx
rep movsb
sub %rcx, %rcx
lea addresses_WT_ht+0x1cc98, %rsi
lea addresses_WC_ht+0x182e8, %rdi
nop
xor $36846, %r11
mov $31, %rcx
rep movsq
nop
nop
nop
nop
and $5131, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %rax
push %rbp
push %rcx
push %rdi

// Load
lea addresses_normal+0x5700, %r13
nop
cmp %rbp, %rbp
movaps (%r13), %xmm7
vpextrq $0, %xmm7, %r10
nop
nop
nop
and %r10, %r10

// Store
lea addresses_A+0x13fe8, %rax
nop
nop
xor %rdi, %rdi
movl $0x51525354, (%rax)
inc %rbp

// Store
lea addresses_PSE+0x19ecf, %r8
add %rcx, %rcx
mov $0x5152535455565758, %r13
movq %r13, %xmm0
vmovups %ymm0, (%r8)
nop
nop
nop
sub %rcx, %rcx

// Load
lea addresses_A+0xb2e8, %rdi
nop
nop
nop
nop
nop
sub $55588, %rbp
movb (%rdi), %r8b
dec %rax

// Store
lea addresses_D+0xdae8, %rdi
nop
nop
nop
nop
sub %rcx, %rcx
movl $0x51525354, (%rdi)
nop
nop
nop
nop
and %r8, %r8

// Store
mov $0xae8, %rbp
dec %rdi
movl $0x51525354, (%rbp)
nop
nop
nop
sub $54348, %rdi

// Store
mov $0xa88, %rcx
nop
nop
nop
nop
nop
xor %rax, %rax
mov $0x5152535455565758, %r10
movq %r10, (%rcx)
and %rax, %rax

// Faulty Load
lea addresses_US+0x62e8, %rdi
nop
nop
nop
inc %r13
mov (%rdi), %ebp
lea oracles, %r10
and $0xff, %rbp
shlq $12, %rbp
mov (%r10,%rbp,1), %rbp
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': True, 'AVXalign': True, 'size': 16, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
