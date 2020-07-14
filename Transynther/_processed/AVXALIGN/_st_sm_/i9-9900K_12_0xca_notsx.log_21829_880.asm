.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xd63, %rbx
nop
nop
nop
cmp %r15, %r15
movups (%rbx), %xmm6
vpextrq $1, %xmm6, %r12
nop
nop
nop
nop
nop
dec %r9
lea addresses_A_ht+0x6dcf, %rsi
lea addresses_UC_ht+0x9583, %rdi
clflush (%rsi)
nop
nop
nop
nop
sub %rax, %rax
mov $38, %rcx
rep movsq
nop
sub %r9, %r9
lea addresses_WT_ht+0xa2f3, %rbx
nop
nop
cmp $17833, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, (%rbx)
dec %rdi
lea addresses_D_ht+0x40b3, %rsi
lea addresses_UC_ht+0x7963, %rdi
nop
xor %rax, %rax
mov $77, %rcx
rep movsq
nop
nop
nop
nop
sub $50943, %r9
lea addresses_D_ht+0x8363, %r15
nop
nop
and %rax, %rax
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
vmovups %ymm6, (%r15)
nop
cmp $12681, %rsi
lea addresses_D_ht+0x2c3b, %rbx
nop
nop
nop
xor %rsi, %rsi
movw $0x6162, (%rbx)
nop
sub $34947, %r15
lea addresses_normal_ht+0x1d13b, %rsi
lea addresses_D_ht+0xe963, %rdi
nop
nop
dec %rax
mov $47, %rcx
rep movsq
nop
nop
nop
cmp %r15, %r15
lea addresses_A_ht+0x10163, %rdi
nop
nop
nop
inc %r15
mov $0x6162636465666768, %r12
movq %r12, %xmm2
and $0xffffffffffffffc0, %rdi
movaps %xmm2, (%rdi)
nop
add $22012, %rsi
lea addresses_A_ht+0x15d63, %rsi
lea addresses_A_ht+0x2563, %rdi
nop
nop
nop
nop
nop
add %rbx, %rbx
mov $112, %rcx
rep movsq
nop
cmp %r12, %r12
lea addresses_WT_ht+0x2163, %rbx
nop
nop
and $18945, %r15
movl $0x61626364, (%rbx)
nop
nop
nop
lfence
lea addresses_WT_ht+0x14563, %rax
nop
nop
nop
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %r15
movq %r15, %xmm4
vmovups %ymm4, (%rax)
nop
nop
nop
nop
nop
add %rax, %rax
lea addresses_WC_ht+0x99a3, %rsi
lea addresses_WC_ht+0x8a53, %rdi
nop
nop
nop
nop
nop
sub $25418, %r9
mov $83, %rcx
rep movsb
nop
nop
nop
sub $60947, %rbx
lea addresses_WC_ht+0x128e3, %rsi
lea addresses_D_ht+0x1803b, %rdi
nop
nop
nop
sub %r15, %r15
mov $109, %rcx
rep movsl
nop
nop
xor $44421, %r15
lea addresses_D_ht+0x8d63, %rcx
nop
nop
inc %rdi
mov (%rcx), %si
nop
nop
nop
and $51288, %r12
lea addresses_WC_ht+0xbf63, %rsi
lea addresses_WC_ht+0x1d1e3, %rdi
nop
nop
nop
nop
dec %r9
mov $39, %rcx
rep movsl
and $45468, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WC+0x4163, %rdi
nop
xor $1844, %r15
movl $0x51525354, (%rdi)
nop
nop
nop
and $16735, %r14

// Store
lea addresses_WC+0x1da63, %rsi
nop
sub %rdx, %rdx
movw $0x5152, (%rsi)
nop
nop
sub %rdi, %rdi

// Store
lea addresses_WT+0xe563, %rdx
xor %rcx, %rcx
movl $0x51525354, (%rdx)
nop
nop
dec %rsi

// Load
lea addresses_WT+0xe563, %rdx
xor %r9, %r9
movups (%rdx), %xmm4
vpextrq $0, %xmm4, %rcx
nop
sub %r14, %r14

// Faulty Load
lea addresses_WT+0xe563, %rdx
mfence
mov (%rdx), %r15
lea oracles, %rcx
and $0xff, %r15
shlq $12, %r15
mov (%rcx,%r15,1), %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_WT', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}, 'dst': {'same': True, 'congruent': 2, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 4, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 6, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}}
{'54': 21829}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
