.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x177f7, %rsi
lea addresses_WC_ht+0x1ee72, %rdi
clflush (%rdi)
nop
nop
nop
nop
inc %r9
mov $77, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %r14, %r14
lea addresses_normal_ht+0x18c72, %r12
nop
and %r15, %r15
movl $0x61626364, (%r12)
nop
nop
nop
and $30643, %rdi
lea addresses_A_ht+0x15872, %rsi
clflush (%rsi)
nop
nop
nop
nop
sub %r15, %r15
mov (%rsi), %r9w
nop
nop
add %rdi, %rdi
lea addresses_D_ht+0xf872, %rdi
nop
sub %r9, %r9
mov $0x6162636465666768, %r14
movq %r14, %xmm5
vmovups %ymm5, (%rdi)
nop
nop
nop
nop
nop
xor $63912, %rsi
lea addresses_D_ht+0x1b872, %r15
nop
nop
nop
nop
nop
xor $6300, %r14
and $0xffffffffffffffc0, %r15
movaps (%r15), %xmm5
vpextrq $1, %xmm5, %rdi
add %r14, %r14
lea addresses_D_ht+0x3632, %rsi
nop
dec %rdi
movb (%rsi), %r12b
nop
nop
nop
inc %r12
lea addresses_D_ht+0xa743, %rsi
lea addresses_WT_ht+0x1d7ee, %rdi
nop
xor $45068, %rax
mov $123, %rcx
rep movsl
nop
xor %r14, %r14
lea addresses_D_ht+0x6a32, %r14
clflush (%r14)
cmp $27316, %rdi
vmovups (%r14), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rcx
nop
nop
nop
nop
cmp %r12, %r12
lea addresses_normal_ht+0x1a322, %rax
nop
nop
nop
nop
add %r9, %r9
movb $0x61, (%rax)
add %rcx, %rcx
lea addresses_UC_ht+0x1e8c3, %rsi
lea addresses_WC_ht+0x5fae, %rdi
dec %rax
mov $127, %rcx
rep movsl
nop
nop
nop
nop
nop
sub %r14, %r14
lea addresses_normal_ht+0xe472, %rsi
lea addresses_WT_ht+0xe192, %rdi
nop
nop
and $13601, %r15
mov $54, %rcx
rep movsq
nop
and %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %rax
push %rbx
push %rdx
push %rsi

// Store
lea addresses_PSE+0x19ae2, %rdx
nop
nop
sub %rbx, %rbx
mov $0x5152535455565758, %r14
movq %r14, %xmm2
vmovaps %ymm2, (%rdx)
nop
nop
nop
nop
add %r13, %r13

// Load
lea addresses_WC+0xe2ee, %r12
nop
nop
nop
nop
nop
cmp %rsi, %rsi
movb (%r12), %dl
nop
xor %r12, %r12

// Faulty Load
lea addresses_D+0xd872, %r12
nop
nop
nop
nop
inc %rsi
movups (%r12), %xmm5
vpextrq $0, %xmm5, %rax
lea oracles, %r13
and $0xff, %rax
shlq $12, %rax
mov (%r13,%rax,1), %rax
pop %rsi
pop %rdx
pop %rbx
pop %rax
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}}
{'36': 7}
36 36 36 36 36 36 36
*/
