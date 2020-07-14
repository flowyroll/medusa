.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1bfd0, %rsi
lea addresses_A_ht+0xbf78, %rdi
clflush (%rsi)
nop
nop
nop
nop
and $62966, %rbx
mov $89, %rcx
rep movsb
nop
nop
nop
nop
nop
add $39478, %r13
lea addresses_UC_ht+0x8fd0, %rsi
lea addresses_UC_ht+0x1c8a2, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
sub $7351, %r15
mov $98, %rcx
rep movsb
nop
sub %rcx, %rcx
lea addresses_UC_ht+0xf1d0, %rsi
nop
nop
and $36197, %r12
movb (%rsi), %r15b
nop
nop
sub $52552, %rsi
lea addresses_D_ht+0xc0, %rdi
nop
nop
and %r12, %r12
movups (%rdi), %xmm3
vpextrq $1, %xmm3, %rcx
nop
nop
cmp %rcx, %rcx
lea addresses_A_ht+0x12e20, %r12
nop
nop
nop
nop
add $3207, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
movups %xmm6, (%r12)
and $24799, %rdi
lea addresses_normal_ht+0x13e38, %r15
nop
nop
nop
nop
nop
cmp %r13, %r13
mov $0x6162636465666768, %rsi
movq %rsi, (%r15)
nop
nop
nop
nop
nop
inc %rcx
lea addresses_UC_ht+0x68d0, %r15
nop
nop
nop
nop
and %r13, %r13
movw $0x6162, (%r15)
nop
nop
nop
nop
nop
lfence
lea addresses_UC_ht+0x144cb, %r15
nop
nop
xor %rcx, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
vmovups %ymm5, (%r15)
nop
nop
nop
nop
nop
dec %r15
lea addresses_D_ht+0x7c98, %rsi
nop
cmp %rcx, %rcx
movl $0x61626364, (%rsi)
nop
nop
nop
inc %rsi
lea addresses_UC_ht+0x17d0, %r13
nop
nop
nop
dec %rcx
movw $0x6162, (%r13)
nop
nop
nop
nop
and $16363, %r12
lea addresses_A_ht+0x15fd0, %r12
nop
nop
sub $23635, %r15
movl $0x61626364, (%r12)
nop
nop
nop
nop
nop
cmp $55318, %rbx
lea addresses_A_ht+0x17c18, %rsi
lea addresses_A_ht+0x9ce4, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
cmp %rax, %rax
mov $79, %rcx
rep movsw
nop
nop
nop
nop
nop
add $4780, %rbx
lea addresses_normal_ht+0xf510, %rsi
lea addresses_WC_ht+0x10f38, %rdi
nop
nop
nop
nop
dec %rax
mov $43, %rcx
rep movsl
nop
nop
nop
dec %rbx
lea addresses_UC_ht+0x2fd0, %rsi
lea addresses_UC_ht+0xbfd0, %rdi
clflush (%rdi)
cmp %rax, %rax
mov $65, %rcx
rep movsq
sub %rsi, %rsi
lea addresses_D_ht+0x166ea, %rax
nop
nop
nop
nop
nop
and %rcx, %rcx
mov (%rax), %si
nop
nop
and $25675, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %rax
push %rcx

// Faulty Load
lea addresses_D+0x16fd0, %rcx
nop
add %r10, %r10
movups (%rcx), %xmm7
vpextrq $1, %xmm7, %rax
lea oracles, %r10
and $0xff, %rax
shlq $12, %rax
mov (%r10,%rax,1), %rax
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_D', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 3, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'36': 21829}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
