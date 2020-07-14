.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0xaaa8, %rsi
lea addresses_WT_ht+0x568, %rdi
nop
inc %r10
mov $60, %rcx
rep movsb
nop
nop
nop
cmp $35945, %rdx
lea addresses_WT_ht+0x15668, %rsi
lea addresses_UC_ht+0xe568, %rdi
nop
nop
nop
xor $23566, %r15
mov $60, %rcx
rep movsb
nop
add %r15, %r15
lea addresses_A_ht+0x1a968, %r10
nop
xor %rbx, %rbx
movl $0x61626364, (%r10)
nop
nop
nop
nop
dec %r10
lea addresses_A_ht+0x1a660, %rsi
lea addresses_A_ht+0x9ab4, %rdi
nop
nop
nop
sub %rbp, %rbp
mov $68, %rcx
rep movsw
nop
sub %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %rbp
push %rdx
push %rsi

// Store
lea addresses_WT+0x1a188, %r11
nop
nop
nop
nop
nop
sub $4433, %r10
mov $0x5152535455565758, %rdx
movq %rdx, %xmm1
vmovups %ymm1, (%r11)
nop
nop
nop
nop
xor %r13, %r13

// Load
lea addresses_A+0x13b68, %rdx
xor %r11, %r11
movups (%rdx), %xmm1
vpextrq $0, %xmm1, %r13
nop
nop
cmp $20212, %rbp

// Store
mov $0x74bc3100000003b0, %rdx
nop
nop
xor %rsi, %rsi
mov $0x5152535455565758, %rbp
movq %rbp, (%rdx)

// Exception!!!
nop
nop
mov (0), %rsi
nop
cmp %r10, %r10

// Load
lea addresses_RW+0x16568, %r11
nop
nop
nop
nop
nop
and %rdx, %rdx
vmovups (%r11), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rbp
nop
sub %rsi, %rsi

// Store
lea addresses_normal+0x18d68, %r10
add %rsi, %rsi
mov $0x5152535455565758, %rdx
movq %rdx, (%r10)
and %r14, %r14

// Store
mov $0xb68, %rbp
nop
nop
nop
nop
cmp %rsi, %rsi
movl $0x51525354, (%rbp)
nop
cmp $41871, %rdx

// Load
lea addresses_normal+0x180e8, %r10
inc %rbp
movups (%r10), %xmm4
vpextrq $1, %xmm4, %r13
nop
nop
nop
nop
nop
and %rdx, %rdx

// Faulty Load
lea addresses_normal+0x18d68, %r10
clflush (%r10)
nop
nop
nop
nop
dec %r14
mov (%r10), %r11
lea oracles, %rbp
and $0xff, %r11
shlq $12, %r11
mov (%rbp,%r11,1), %r11
pop %rsi
pop %rdx
pop %rbp
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_normal', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}}
{'58': 118}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
