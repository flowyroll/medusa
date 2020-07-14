.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x459b, %rsi
lea addresses_normal_ht+0x1e927, %rdi
nop
dec %r11
mov $93, %rcx
rep movsl
cmp $21797, %r9
lea addresses_UC_ht+0x5a6b, %r10
nop
nop
nop
nop
mfence
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
movups %xmm3, (%r10)
nop
cmp %rdi, %rdi
lea addresses_UC_ht+0xebeb, %rsi
lea addresses_UC_ht+0x197eb, %rdi
nop
sub %rax, %rax
mov $2, %rcx
rep movsw
nop
nop
nop
nop
and $13225, %r11
lea addresses_A_ht+0x1d9eb, %r10
nop
nop
nop
nop
nop
cmp $54718, %rcx
mov (%r10), %r9d
nop
cmp %r11, %r11
lea addresses_WC_ht+0x14a3, %r10
nop
xor $20744, %rcx
mov (%r10), %r9d
nop
nop
nop
nop
sub %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %r8
push %r9
push %rcx
push %rsi

// Store
lea addresses_A+0x94cb, %r8
nop
nop
nop
sub $64417, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm2
vmovntdq %ymm2, (%r8)
nop
nop
nop
nop
nop
add %rcx, %rcx

// Store
lea addresses_WC+0x76eb, %rsi
add $63642, %r15
movl $0x51525354, (%rsi)
sub %r10, %r10

// Store
mov $0x2a94ba0000000beb, %r13
nop
nop
sub %rcx, %rcx
movl $0x51525354, (%r13)
nop
nop
nop
and %rsi, %rsi

// Store
mov $0x43807000000002ab, %rcx
nop
nop
and $54318, %rsi
movl $0x51525354, (%rcx)
xor %r9, %r9

// Store
lea addresses_WT+0x1d36b, %r9
nop
nop
nop
and $26154, %rcx
movw $0x5152, (%r9)
nop
nop
nop
nop
nop
xor $30904, %r9

// Faulty Load
lea addresses_US+0x4beb, %rsi
sub $39781, %rcx
mov (%rsi), %r10
lea oracles, %r9
and $0xff, %r10
shlq $12, %r10
mov (%r9,%r10,1), %r10
pop %rsi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_A', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_WC', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_NC', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_NC', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT', 'congruent': 7}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 3}}
{'54': 3}
54 54 54
*/
