.global s_prepare_buffers
s_prepare_buffers:
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x32d5, %rdx
nop
nop
sub $30686, %r9
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
movups %xmm2, (%rdx)
nop
nop
nop
nop
cmp $52743, %rbx
lea addresses_UC_ht+0x1c999, %rsi
lea addresses_WT_ht+0x19075, %rdi
nop
nop
nop
add $17853, %rbp
mov $123, %rcx
rep movsw
nop
nop
xor $52259, %r9
lea addresses_D_ht+0x174fd, %rsi
lea addresses_WC_ht+0x1bd95, %rdi
clflush (%rsi)
nop
xor $1051, %rbp
mov $44, %rcx
rep movsl
sub %r9, %r9
lea addresses_D_ht+0xa2d5, %rsi
nop
xor $63525, %rdi
movl $0x61626364, (%rsi)
cmp %rsi, %rsi
lea addresses_WC_ht+0x19955, %rdx
nop
nop
nop
add %rdi, %rdi
movups (%rdx), %xmm4
vpextrq $1, %xmm4, %rbx
nop
xor %rbx, %rbx
lea addresses_UC_ht+0x10e25, %r9
nop
nop
nop
nop
nop
add $25359, %rsi
mov (%r9), %edi
nop
nop
nop
nop
nop
cmp $57214, %rdx
lea addresses_D_ht+0x2ed5, %rsi
lea addresses_normal_ht+0x12b49, %rdi
nop
nop
cmp %rax, %rax
mov $81, %rcx
rep movsw
nop
xor %rcx, %rcx
lea addresses_A_ht+0x6e35, %rbx
nop
nop
nop
nop
nop
lfence
mov (%rbx), %rdi
nop
nop
cmp $15960, %rbx
lea addresses_A_ht+0x1d035, %rdi
nop
nop
inc %rbx
movw $0x6162, (%rdi)
nop
nop
nop
nop
nop
dec %rbp
lea addresses_WT_ht+0xb845, %rbp
nop
nop
nop
inc %rsi
mov $0x6162636465666768, %r9
movq %r9, %xmm2
movups %xmm2, (%rbp)
nop
nop
nop
nop
nop
cmp $20384, %rax
lea addresses_A_ht+0x1c155, %rbx
nop
nop
nop
and $6891, %rbp
movw $0x6162, (%rbx)
nop
inc %rdi
lea addresses_WC_ht+0x9155, %rdi
nop
nop
dec %rbp
mov $0x6162636465666768, %r9
movq %r9, (%rdi)
nop
nop
add %r9, %r9
lea addresses_D_ht+0xaed5, %rbx
nop
add %rsi, %rsi
movb $0x61, (%rbx)
nop
nop
nop
nop
nop
xor $4531, %rbx
lea addresses_UC_ht+0x14015, %rsi
lea addresses_D_ht+0x14bd5, %rdi
nop
and $27375, %rax
mov $73, %rcx
rep movsw
nop
nop
cmp %r9, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r15
push %rax
push %rbp
push %rdi

// Store
mov $0x6795700000000814, %rax
nop
and %rdi, %rdi
mov $0x5152535455565758, %rbp
movq %rbp, (%rax)
nop
nop
nop
nop
nop
sub $5416, %rbp

// Store
lea addresses_A+0x136d5, %r15
xor %r10, %r10
movl $0x51525354, (%r15)
nop
nop
nop
nop
nop
xor $39041, %r12

// Load
lea addresses_PSE+0xb27c, %r12
nop
nop
nop
add $52970, %rbp
mov (%r12), %r15w
nop
nop
nop
nop
nop
cmp $41013, %r15

// Store
lea addresses_D+0x40d5, %rdi
nop
nop
cmp $28113, %r15
movb $0x51, (%rdi)
nop
inc %rbp

// Faulty Load
lea addresses_D+0x7ad5, %r12
nop
nop
nop
inc %rdi
vmovups (%r12), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rax
lea oracles, %r12
and $0xff, %rax
shlq $12, %rax
mov (%r12,%rax,1), %rax
pop %rdi
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 4, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}}
{'36': 12}
36 36 36 36 36 36 36 36 36 36 36 36
*/
