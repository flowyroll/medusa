.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %rbx
push %rcx
push %rdi
push %rdx
lea addresses_D_ht+0x17b98, %rcx
clflush (%rcx)
xor $57191, %r12
vmovups (%rcx), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r13
xor $5025, %rdi
lea addresses_WC_ht+0xf98, %rdx
nop
nop
add %r11, %r11
movw $0x6162, (%rdx)
nop
nop
and $40481, %r13
lea addresses_WC_ht+0x6838, %rbx
sub %rcx, %rcx
mov (%rbx), %rdx
nop
nop
nop
nop
nop
and $25723, %r12
lea addresses_WT_ht+0x14398, %r12
nop
nop
nop
dec %r11
and $0xffffffffffffffc0, %r12
movaps (%r12), %xmm5
vpextrq $0, %xmm5, %rdi
nop
nop
nop
and $13462, %rcx
lea addresses_UC_ht+0x4398, %r13
nop
nop
nop
nop
inc %rdx
mov (%r13), %edi
nop
nop
add %rcx, %rcx
lea addresses_WC_ht+0x1dd50, %rcx
nop
inc %rdx
mov (%rcx), %edi
nop
nop
nop
nop
add $60360, %rdx
lea addresses_normal_ht+0x1ba28, %rdi
and %rdx, %rdx
vmovups (%rdi), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r13
nop
nop
nop
nop
nop
sub $53206, %rcx
lea addresses_A_ht+0x15198, %rbx
cmp $45851, %r13
mov $0x6162636465666768, %r12
movq %r12, %xmm3
movups %xmm3, (%rbx)
nop
nop
nop
sub %rdx, %rdx
lea addresses_WC_ht+0xeb98, %rbx
nop
nop
nop
cmp $53471, %rdx
movb $0x61, (%rbx)
nop
nop
nop
nop
lfence
lea addresses_normal_ht+0xa398, %r12
nop
nop
sub $53437, %r13
movl $0x61626364, (%r12)
nop
nop
nop
nop
and $60852, %rcx
lea addresses_UC_ht+0x1a198, %rcx
nop
nop
nop
and %r13, %r13
movl $0x61626364, (%rcx)
cmp $51020, %r11
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_US+0x1a4f8, %rsi
lea addresses_D+0x11798, %rdi
xor %r10, %r10
mov $0, %rcx
rep movsl
nop
nop
add $54519, %rdx

// Load
lea addresses_D+0xf7d8, %rax
nop
nop
add %rdx, %rdx
vmovups (%rax), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rdi
nop
inc %rsi

// Store
mov $0x5da58f00000008d8, %r15
nop
xor %rdi, %rdi
movl $0x51525354, (%r15)
nop
nop
nop
nop
cmp $18855, %rcx

// Load
lea addresses_A+0x7401, %rsi
nop
nop
and %r10, %r10
mov (%rsi), %edx
nop
nop
nop
nop
add %rdi, %rdi

// Store
lea addresses_A+0x2a18, %rax
nop
nop
nop
nop
nop
add %rdi, %rdi
movl $0x51525354, (%rax)
cmp %r10, %r10

// Store
lea addresses_A+0x4418, %r10
nop
nop
xor $14548, %rdi
movl $0x51525354, (%r10)
nop
nop
nop
xor $3513, %r10

// Store
lea addresses_PSE+0xef98, %rcx
clflush (%rcx)
nop
nop
and %rax, %rax
mov $0x5152535455565758, %r10
movq %r10, %xmm6
vmovups %ymm6, (%rcx)
nop
xor %rsi, %rsi

// Load
lea addresses_normal+0x1398, %rdx
nop
nop
nop
nop
cmp %r15, %r15
mov (%rdx), %r10
nop
nop
nop
nop
xor %rdx, %rdx

// Faulty Load
lea addresses_normal+0x1398, %rdx
nop
nop
nop
nop
nop
xor %r15, %r15
mov (%rdx), %rcx
lea oracles, %r10
and $0xff, %rcx
shlq $12, %rcx
mov (%r10,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_US'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_D'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 8}}
{'34': 15}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
