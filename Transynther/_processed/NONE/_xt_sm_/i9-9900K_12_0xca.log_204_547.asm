.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x12ad1, %rax
clflush (%rax)
add $31944, %rdi
movups (%rax), %xmm7
vpextrq $1, %xmm7, %r14
nop
nop
cmp %rbp, %rbp
lea addresses_D_ht+0x18bf1, %rsi
lea addresses_normal_ht+0x6651, %rdi
nop
nop
nop
nop
sub %r14, %r14
mov $109, %rcx
rep movsq
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_A_ht+0x1ebd1, %rsi
nop
nop
nop
sub %r12, %r12
movl $0x61626364, (%rsi)
nop
nop
nop
dec %rcx
lea addresses_normal_ht+0x1e3d1, %rsi
lea addresses_A_ht+0x51cf, %rdi
nop
nop
add %r9, %r9
mov $89, %rcx
rep movsw
nop
nop
nop
inc %r12
lea addresses_normal_ht+0x83d1, %r9
xor %rsi, %rsi
movw $0x6162, (%r9)
inc %rbp
lea addresses_WT_ht+0xeb51, %rsi
nop
nop
nop
nop
add %rcx, %rcx
movw $0x6162, (%rsi)
nop
nop
nop
cmp $14841, %r12
lea addresses_normal_ht+0x1789b, %rbp
nop
and $7451, %r9
mov (%rbp), %cx
nop
nop
nop
nop
inc %rcx
lea addresses_D_ht+0x19f51, %r12
nop
nop
nop
nop
xor $25516, %rbp
movb $0x61, (%r12)
nop
inc %rbp
lea addresses_normal_ht+0x1b1d1, %rsi
lea addresses_WC_ht+0x60d1, %rdi
nop
nop
nop
nop
xor %r9, %r9
mov $109, %rcx
rep movsb
nop
xor $43878, %rbp
lea addresses_WT_ht+0x2b91, %rsi
nop
nop
nop
inc %r9
mov $0x6162636465666768, %rax
movq %rax, %xmm5
movups %xmm5, (%rsi)
nop
nop
nop
inc %rbp
lea addresses_UC_ht+0xc3d1, %rbp
nop
nop
nop
nop
nop
inc %r12
movb $0x61, (%rbp)
nop
nop
nop
nop
nop
add $38151, %rdi
lea addresses_normal_ht+0x1b3d1, %rsi
lea addresses_normal_ht+0x2921, %rdi
nop
nop
nop
xor %r14, %r14
mov $124, %rcx
rep movsq
nop
nop
nop
xor $18318, %rcx
lea addresses_WC_ht+0xd6d1, %rsi
lea addresses_normal_ht+0x150b9, %rdi
clflush (%rsi)
nop
xor %r14, %r14
mov $33, %rcx
rep movsb
nop
nop
nop
xor %r9, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r8
push %rbx
push %rdi
push %rsi

// Load
mov $0x1f8caf0000000fd1, %rbx
nop
nop
sub $56153, %rdi
movb (%rbx), %r13b
nop
nop
nop
nop
add $58041, %rbx

// Load
lea addresses_normal+0x1d434, %r12
clflush (%r12)
nop
nop
cmp %rsi, %rsi
mov (%r12), %r8w
nop
nop
nop
nop
nop
dec %r12

// Store
lea addresses_WT+0x143d1, %r15
nop
xor $60048, %rsi
movl $0x51525354, (%r15)
nop
nop
nop
nop
nop
cmp $15186, %r15

// Store
lea addresses_WT+0x14d51, %r13
nop
nop
nop
nop
nop
and %r15, %r15
movl $0x51525354, (%r13)
cmp $28649, %r13

// Load
lea addresses_A+0xc3d1, %r12
nop
nop
nop
nop
sub %rdi, %rdi
and $0xffffffffffffffc0, %r12
vmovntdqa (%r12), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r8
nop
nop
nop
sub %r8, %r8

// Store
mov $0x1473f60000000269, %rsi
sub %r8, %r8
movb $0x51, (%rsi)
dec %r13

// Faulty Load
lea addresses_WT+0x143d1, %rsi
nop
and $40947, %r13
movups (%rsi), %xmm0
vpextrq $0, %xmm0, %rbx
lea oracles, %r8
and $0xff, %rbx
shlq $12, %rbx
mov (%r8,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rbx
pop %r8
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': True, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': True, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': True, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': True, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 2}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': True, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': True, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_normal_ht', 'congruent': 11}, 'dst': {'same': True, 'type': 'addresses_normal_ht', 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 0}}
{'54': 204}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
