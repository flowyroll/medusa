.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x167cd, %rsi
lea addresses_UC_ht+0x3e79, %rdi
clflush (%rsi)
nop
nop
and $58855, %r10
mov $97, %rcx
rep movsl
nop
nop
nop
and %rbx, %rbx
lea addresses_A_ht+0x1a9fd, %rsi
lea addresses_UC_ht+0x13c3f, %rdi
clflush (%rsi)
nop
dec %r13
mov $78, %rcx
rep movsb
and $12273, %rbx
lea addresses_WC_ht+0xa3cd, %rbx
clflush (%rbx)
nop
cmp %rcx, %rcx
movups (%rbx), %xmm3
vpextrq $0, %xmm3, %r10
nop
nop
nop
cmp $51940, %rbx
lea addresses_normal_ht+0x117f, %rsi
lea addresses_normal_ht+0x525, %rdi
nop
nop
nop
nop
add $3319, %r12
mov $99, %rcx
rep movsl
and %rdi, %rdi
lea addresses_normal_ht+0x1c41d, %rsi
lea addresses_D_ht+0xedad, %rdi
clflush (%rsi)
nop
nop
and %rbx, %rbx
mov $104, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %rdi
lea addresses_WT_ht+0x1c96d, %rsi
nop
nop
xor $13985, %rdi
vmovups (%rsi), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rbx
nop
sub $25832, %rdi
lea addresses_A_ht+0xa9cd, %rdi
nop
nop
nop
nop
xor $9462, %r10
movw $0x6162, (%rdi)
sub $33865, %rbx
lea addresses_UC_ht+0x197cd, %rsi
lea addresses_normal_ht+0x299, %rdi
nop
nop
nop
sub %rax, %rax
mov $102, %rcx
rep movsw
nop
nop
and $26075, %rax
lea addresses_A_ht+0x19c0d, %rsi
nop
nop
add $44796, %rcx
movl $0x61626364, (%rsi)
nop
nop
nop
nop
nop
cmp %r10, %r10
lea addresses_WC_ht+0xbdcd, %r12
add %rdi, %rdi
mov (%r12), %ebx
xor %r10, %r10
lea addresses_UC_ht+0x1364d, %rdi
nop
nop
xor %rax, %rax
movb $0x61, (%rdi)
nop
nop
nop
dec %rsi
lea addresses_D_ht+0xd5cd, %rax
clflush (%rax)
nop
nop
sub %rdi, %rdi
movb $0x61, (%rax)
nop
nop
nop
nop
xor %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r9
push %rax
push %rbx
push %rdx

// Store
lea addresses_US+0x1e685, %r13
clflush (%r13)
xor $65514, %rdx
mov $0x5152535455565758, %r9
movq %r9, (%r13)
sub %r9, %r9

// Store
mov $0x27112400000007cd, %rdx
nop
nop
and %rbx, %rbx
movb $0x51, (%rdx)
nop
nop
dec %rdx

// Store
lea addresses_US+0x23bd, %rdx
nop
nop
nop
nop
cmp $57156, %r14
movl $0x51525354, (%rdx)
dec %r13

// Load
lea addresses_D+0x54cd, %r12
nop
nop
nop
nop
inc %r13
movups (%r12), %xmm5
vpextrq $0, %xmm5, %rbx
nop
nop
nop
nop
add $46888, %rdx

// Store
lea addresses_US+0x107cd, %r14
nop
xor %rbx, %rbx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm0
movups %xmm0, (%r14)
cmp %rax, %rax

// Faulty Load
mov $0x27112400000007cd, %r14
nop
nop
nop
nop
cmp %rdx, %rdx
vmovups (%r14), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rax
lea oracles, %r9
and $0xff, %rax
shlq $12, %rax
mov (%r9,%rax,1), %rax
pop %rdx
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 8}}
{'ff': 3, '72': 1, '49': 92, '00': 7256, '45': 839, '44': 13638}
00 00 44 44 00 00 44 00 44 44 00 44 00 44 44 44 00 44 44 00 44 44 44 00 44 00 44 00 00 44 00 44 44 44 44 44 00 44 44 44 00 44 00 44 00 44 44 44 44 00 44 44 00 44 44 44 44 00 00 00 00 00 00 00 00 44 44 44 00 00 45 00 00 00 00 44 44 44 00 00 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 45 00 00 44 44 44 00 00 44 44 00 44 00 00 44 44 00 44 44 44 44 44 44 00 44 44 00 45 45 00 00 44 00 44 44 44 44 00 44 00 44 00 00 44 44 44 44 44 00 44 44 00 00 44 00 44 00 00 44 44 44 44 44 00 00 00 00 44 00 00 44 00 44 44 44 44 44 00 00 44 00 00 44 44 00 44 44 44 44 00 00 00 44 00 44 00 00 44 00 00 00 44 00 44 44 44 00 00 44 00 44 00 00 00 44 44 44 44 00 00 00 44 44 00 44 00 44 00 00 44 44 44 44 44 44 00 44 44 44 44 00 44 00 00 44 44 44 44 00 00 44 44 00 44 44 44 44 44 44 44 44 44 00 45 00 44 44 00 44 00 44 44 44 44 44 00 44 44 00 44 44 44 44 44 44 00 44 44 44 00 44 00 44 00 00 44 00 00 00 44 00 44 44 44 44 00 44 00 44 00 00 44 00 44 44 00 44 00 00 00 00 44 45 44 00 44 44 44 00 44 00 00 44 44 44 00 00 44 00 44 00 00 44 44 44 44 00 44 44 44 44 44 44 00 44 00 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 00 44 44 44 44 44 44 00 44 44 44 44 00 44 44 00 00 00 00 44 00 44 00 44 44 44 44 44 44 44 44 44 44 00 44 00 00 44 00 44 44 44 44 00 44 45 44 00 00 44 44 45 44 00 00 44 44 44 00 44 45 00 00 44 00 44 44 45 00 44 44 44 44 44 44 44 44 00 00 44 44 00 44 44 00 44 45 44 00 44 00 44 44 44 44 00 44 44 00 00 44 44 44 00 44 00 44 45 00 00 44 44 44 44 00 00 44 44 44 44 00 44 44 44 00 00 00 44 00 44 00 44 00 44 44 44 00 00 44 44 44 00 44 44 44 00 44 00 44 00 44 44 00 44 44 00 00 44 44 44 44 44 44 44 44 00 44 00 44 44 44 44 44 44 44 44 00 45 44 44 44 00 00 44 00 44 44 00 00 00 44 44 44 44 00 44 00 44 44 44 44 00 44 00 44 00 00 00 00 44 00 00 00 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 00 00 00 00 00 00 00 00 44 44 00 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 00 00 44 44 44 44 44 45 44 45 44 44 44 44 44 00 44 00 00 44 00 00 00 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 00 44 44 44 44 00 00 44 44 00 44 00 00 44 44 44 44 45 44 44 00 44 44 00 44 00 00 44 00 45 44 00 44 44 00 44 44 00 45 44 00 44 00 00 44 44 44 44 44 44 44 44 44 00 00 44 00 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 44 44 00 44 44 44 44 00 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 00 45 44 00 00 00 44 44 44 00 44 00 49 44 00 44 44 00 44 44 00 44 00 00 44 44 00 00 44 44 44 44 00 44 44 45 44 44 00 44 44 00 00 00 44 45 44 00 44 44 44 44 44 44 44 00 44 00 00 00 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 00 44 44 44 00 45 44 00 00 44 44 00 44 44 44 00 44 44 44 44 44 00 44 00 44 44 44 44 44 44 44 44 44 44 00 44 00 44 44 44 44 44 00 44 44 72 44 44 00 44 44 44 44 44 44 00 44 00 00 44 00 00 44 00 44 44 00 44 44 44 44 00 44 44 45 00 44 00 00 44 44 44 00 44 44 00 44 44 44 00 00 44 44 44 44 44 44 44 00 00 44 00 44 45 45 00 00 44 44 44 44 44 44 45 44 44 44 44 00 44 00 44 44 00 44 44 44 00 44 00 00 44 00 00 00 00 44 45 44 44 44 44 00
*/
