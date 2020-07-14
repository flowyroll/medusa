.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x19283, %rax
clflush (%rax)
nop
nop
nop
nop
nop
lfence
mov (%rax), %bp
nop
add %rdi, %rdi
lea addresses_D_ht+0x1e5f3, %r12
nop
cmp $44590, %rcx
movb $0x61, (%r12)
add %rdi, %rdi
lea addresses_WC_ht+0x1dac3, %rsi
lea addresses_WT_ht+0x1a6e3, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
sub $5589, %r12
mov $71, %rcx
rep movsq
nop
nop
sub %rdi, %rdi
lea addresses_D_ht+0x3503, %rcx
nop
nop
xor %r13, %r13
movups (%rcx), %xmm5
vpextrq $0, %xmm5, %rdi
nop
nop
nop
sub %r13, %r13
lea addresses_D_ht+0x1c283, %rcx
nop
nop
nop
nop
nop
add %rbp, %rbp
movb $0x61, (%rcx)
dec %rcx
lea addresses_UC_ht+0x11583, %rsi
lea addresses_normal_ht+0x13f95, %rdi
nop
xor $6952, %rbp
mov $45, %rcx
rep movsw
nop
nop
sub $6005, %rbp
lea addresses_UC_ht+0xe0d3, %rsi
lea addresses_A_ht+0x963, %rdi
nop
nop
nop
nop
sub $38297, %rax
mov $78, %rcx
rep movsq
nop
xor $64861, %rax
lea addresses_UC_ht+0x16103, %r12
nop
cmp $16402, %r14
mov $0x6162636465666768, %rax
movq %rax, (%r12)
nop
nop
sub $4, %rsi
lea addresses_WC_ht+0x2d83, %rbp
nop
nop
xor $5212, %r13
movl $0x61626364, (%rbp)
nop
and $41169, %rcx
lea addresses_A_ht+0x7ed3, %rcx
nop
nop
nop
dec %rdi
mov $0x6162636465666768, %r14
movq %r14, (%rcx)
nop
sub %rcx, %rcx
lea addresses_WT_ht+0x9d03, %rdi
nop
nop
nop
nop
xor $38637, %r13
vmovups (%rdi), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rbp
nop
nop
add $64918, %rsi
lea addresses_A_ht+0x36c3, %rsi
lea addresses_WT_ht+0x10683, %rdi
nop
nop
cmp %r14, %r14
mov $54, %rcx
rep movsw
nop
nop
nop
and %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi

// Store
lea addresses_A+0xa744, %rdi
clflush (%rdi)
nop
nop
nop
nop
add %rcx, %rcx
mov $0x5152535455565758, %r12
movq %r12, %xmm7
movups %xmm7, (%rdi)
nop
nop
nop
dec %rax

// Store
lea addresses_D+0xa4e3, %rax
nop
and $33614, %rsi
movw $0x5152, (%rax)
nop
nop
cmp $59875, %rcx

// Store
mov $0xe83, %rsi
clflush (%rsi)
nop
nop
nop
and $50830, %r12
movb $0x51, (%rsi)
nop
nop
nop
nop
nop
cmp %r8, %r8

// Store
lea addresses_US+0x1ec83, %rcx
nop
nop
nop
xor $48527, %r15
mov $0x5152535455565758, %r8
movq %r8, %xmm2
movups %xmm2, (%rcx)
nop
nop
nop
nop
nop
cmp %rax, %rax

// Store
lea addresses_UC+0x1b6df, %r8
nop
inc %r15
mov $0x5152535455565758, %rsi
movq %rsi, (%r8)
nop
nop
nop
nop
nop
xor $4840, %r12

// Store
lea addresses_WC+0x1fda3, %rdi
nop
nop
nop
nop
nop
and $25123, %rcx
movl $0x51525354, (%rdi)
nop
nop
xor $54829, %r15

// Store
mov $0x66c52600000001d3, %r8
nop
nop
nop
sub $57903, %r12
movl $0x51525354, (%r8)

// Exception!!!
mov (0), %rax
add $43057, %r12

// Store
mov $0x7609c40000000c85, %rax
clflush (%rax)
nop
inc %r15
mov $0x5152535455565758, %r12
movq %r12, %xmm3
vmovups %ymm3, (%rax)
nop
nop
nop
nop
nop
cmp $56384, %rcx

// Store
lea addresses_D+0x1080b, %rdi
nop
nop
sub %rax, %rax
movb $0x51, (%rdi)
nop
nop
nop
nop
xor %r8, %r8

// Faulty Load
mov $0x66854c0000000e83, %r12
nop
nop
nop
nop
dec %rsi
movups (%r12), %xmm2
vpextrq $1, %xmm2, %rdi
lea oracles, %r12
and $0xff, %rdi
shlq $12, %rdi
mov (%r12,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': True, 'AVXalign': True, 'size': 8, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}}
{'46': 316, '00': 21508, '45': 4, '72': 1}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
