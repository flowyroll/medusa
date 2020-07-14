.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x12860, %rsi
lea addresses_UC_ht+0xc228, %rdi
nop
nop
nop
nop
nop
sub %r13, %r13
mov $46, %rcx
rep movsq
nop
nop
nop
nop
nop
and $58584, %rbx
lea addresses_UC_ht+0x8a28, %r14
nop
nop
nop
nop
nop
add $15010, %r12
mov $0x6162636465666768, %rbx
movq %rbx, %xmm0
vmovups %ymm0, (%r14)
nop
nop
nop
add $63641, %rbx
lea addresses_A_ht+0x162fd, %rsi
lea addresses_WT_ht+0x1e404, %rdi
nop
sub $61747, %rdx
mov $96, %rcx
rep movsb
nop
nop
nop
nop
inc %rcx
lea addresses_WC_ht+0x115dc, %rsi
lea addresses_D_ht+0x228, %rdi
nop
nop
nop
nop
xor %r14, %r14
mov $19, %rcx
rep movsq
nop
dec %rsi
lea addresses_normal_ht+0x144c0, %r12
sub %rbx, %rbx
vmovups (%r12), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rsi
nop
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_UC_ht+0x1764c, %r12
xor %rdi, %rdi
mov $0x6162636465666768, %r13
movq %r13, %xmm6
movups %xmm6, (%r12)
nop
nop
nop
nop
sub $39134, %rdx
lea addresses_normal_ht+0x95cc, %rbx
nop
nop
nop
nop
xor %r14, %r14
mov (%rbx), %r12
xor %r13, %r13
lea addresses_normal_ht+0x7849, %r12
clflush (%r12)
nop
nop
nop
nop
cmp %r14, %r14
movl $0x61626364, (%r12)
nop
nop
nop
and %r13, %r13
lea addresses_normal_ht+0x7a28, %r14
nop
nop
nop
nop
nop
dec %r12
movb (%r14), %cl
nop
nop
nop
and $50948, %r14
lea addresses_UC_ht+0x7c28, %rsi
clflush (%rsi)
and $20128, %rdx
movups (%rsi), %xmm0
vpextrq $1, %xmm0, %r14
nop
nop
nop
nop
xor $8067, %rcx
lea addresses_WC_ht+0xbe28, %r14
xor $14344, %rdi
movb (%r14), %cl
nop
nop
add %rdi, %rdi
lea addresses_A_ht+0x40bc, %r14
clflush (%r14)
nop
nop
nop
sub $56367, %rdx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
movups %xmm0, (%r14)
nop
lfence
lea addresses_A_ht+0x4c28, %rdi
xor %rsi, %rsi
movl $0x61626364, (%rdi)
nop
nop
and $16141, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
mov $0x230, %rsi
nop
nop
nop
nop
sub $2224, %rbp
movb $0x51, (%rsi)
nop
nop
nop
nop
nop
add $64381, %r14

// Store
lea addresses_UC+0xf048, %rsi
nop
cmp $65451, %rdi
movb $0x51, (%rsi)

// Exception!!!
nop
nop
nop
mov (0), %rcx
nop
dec %rcx

// Store
lea addresses_WT+0x7b48, %r14
nop
xor $24837, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, (%r14)
nop
nop
nop
nop
nop
and %rcx, %rcx

// Load
lea addresses_A+0xd70, %r14
nop
nop
nop
nop
nop
dec %rsi
mov (%r14), %dx
nop
nop
nop
nop
nop
xor %rdx, %rdx

// Faulty Load
lea addresses_D+0x1da28, %rdx
nop
nop
nop
nop
add $43059, %rdi
vmovups (%rdx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r14
lea oracles, %rdi
and $0xff, %r14
shlq $12, %r14
mov (%rdi,%r14,1), %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8}}
{'36': 21829}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
