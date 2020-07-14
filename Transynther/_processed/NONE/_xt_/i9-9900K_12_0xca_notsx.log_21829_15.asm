.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x14d88, %rsi
lea addresses_WC_ht+0x1bb88, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add %r10, %r10
mov $62, %rcx
rep movsq
nop
nop
add %r13, %r13
lea addresses_normal_ht+0x109c4, %rax
clflush (%rax)
nop
add $54642, %r12
mov (%rax), %r13w
nop
nop
nop
xor $40848, %rdi
lea addresses_WT_ht+0x75ec, %rsi
lea addresses_UC_ht+0x15388, %rdi
nop
nop
cmp $48855, %r8
mov $60, %rcx
rep movsb
nop
nop
nop
nop
nop
sub %r12, %r12
lea addresses_normal_ht+0x17908, %r8
nop
nop
add $32373, %r13
movb (%r8), %cl
nop
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x1d338, %rcx
nop
nop
nop
add %r12, %r12
mov $0x6162636465666768, %r10
movq %r10, (%rcx)
inc %r8
lea addresses_UC_ht+0x134a8, %rsi
lea addresses_WT_ht+0x308, %rdi
clflush (%rsi)
and %rax, %rax
mov $8, %rcx
rep movsl
cmp %r8, %r8
lea addresses_A_ht+0x94c8, %rdi
nop
add $58238, %r13
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
vmovups %ymm5, (%rdi)
nop
xor %rax, %rax
lea addresses_WT_ht+0x1e708, %rsi
lea addresses_WT_ht+0x1a408, %rdi
nop
nop
nop
nop
nop
cmp $13193, %r12
mov $80, %rcx
rep movsb
sub %rsi, %rsi
lea addresses_D_ht+0x11b88, %rax
nop
nop
nop
nop
cmp $57178, %rsi
movb (%rax), %r13b
sub $61909, %r12
lea addresses_UC_ht+0x4c38, %rcx
clflush (%rcx)
nop
nop
xor $12387, %r13
mov (%rcx), %eax
nop
nop
nop
inc %rdi
lea addresses_normal_ht+0x1b588, %r12
nop
nop
sub %r10, %r10
mov (%r12), %rsi
nop
nop
cmp $51878, %rsi
lea addresses_normal_ht+0xcb88, %rsi
lea addresses_A_ht+0x17d88, %rdi
clflush (%rsi)
sub %r8, %r8
mov $82, %rcx
rep movsw
nop
nop
nop
nop
nop
dec %r10
lea addresses_WC_ht+0x1518, %rax
nop
nop
nop
mfence
mov $0x6162636465666768, %rdi
movq %rdi, (%rax)
nop
nop
nop
nop
add %r12, %r12
lea addresses_normal_ht+0xf388, %rsi
lea addresses_D_ht+0xf888, %rdi
nop
nop
nop
and $53026, %r12
mov $97, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %r13
lea addresses_WC_ht+0x2a88, %rsi
nop
nop
nop
sub $54150, %rcx
mov $0x6162636465666768, %r12
movq %r12, %xmm6
vmovups %ymm6, (%rsi)
nop
xor %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r9
push %rax
push %rbp
push %rdi

// Load
mov $0x408, %r13
nop
cmp %r12, %r12
mov (%r13), %rax
nop
nop
nop
nop
sub %r13, %r13

// Store
lea addresses_WT+0x1b388, %rbp
nop
nop
nop
sub %r15, %r15
mov $0x5152535455565758, %r12
movq %r12, (%rbp)
nop
nop
and %r13, %r13

// Store
lea addresses_A+0xa388, %r15
nop
nop
nop
nop
sub %rdi, %rdi
movw $0x5152, (%r15)
sub $16303, %rax

// Faulty Load
lea addresses_RW+0x8b88, %rbp
nop
cmp %r9, %r9
mov (%rbp), %edi
lea oracles, %rax
and $0xff, %rdi
shlq $12, %rdi
mov (%rax,%rdi,1), %rdi
pop %rdi
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 9}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 4, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'dst': {'same': True, 'congruent': 6, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8}}
{'32': 21829}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
