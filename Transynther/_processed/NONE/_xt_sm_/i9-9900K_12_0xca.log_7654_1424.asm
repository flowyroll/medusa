.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xa9cc, %rbx
nop
nop
nop
nop
sub %r15, %r15
movb $0x61, (%rbx)
nop
nop
cmp $25578, %rdx
lea addresses_A_ht+0x1bac, %r15
nop
xor %r9, %r9
movups (%r15), %xmm1
vpextrq $0, %xmm1, %r12
nop
nop
nop
dec %rbx
lea addresses_WC_ht+0xfb2c, %rsi
lea addresses_A_ht+0x17d2c, %rdi
clflush (%rdi)
nop
nop
cmp $63087, %r9
mov $75, %rcx
rep movsb
nop
nop
dec %r12
lea addresses_WC_ht+0x19d2c, %rcx
nop
nop
add $5931, %rbx
mov (%rcx), %rdx
nop
nop
nop
nop
cmp $14305, %rbx
lea addresses_A_ht+0x1a5c0, %rsi
lea addresses_normal_ht+0xf2c, %rdi
nop
nop
nop
nop
sub $8483, %r12
mov $94, %rcx
rep movsq
nop
sub $51602, %rdx
lea addresses_A_ht+0x196dc, %r12
nop
nop
nop
nop
nop
dec %rcx
movl $0x61626364, (%r12)
nop
sub $37818, %r9
lea addresses_UC_ht+0x1bd44, %rsi
lea addresses_A_ht+0x11e2c, %rdi
nop
nop
nop
nop
nop
sub %r12, %r12
mov $81, %rcx
rep movsb
nop
nop
nop
nop
sub %r15, %r15
lea addresses_normal_ht+0x40ac, %rsi
clflush (%rsi)
nop
nop
nop
cmp $52053, %rcx
mov (%rsi), %r9d
nop
xor %r9, %r9
lea addresses_WC_ht+0xb52c, %rsi
lea addresses_A_ht+0x1a7fe, %rdi
nop
nop
nop
and %rdx, %rdx
mov $117, %rcx
rep movsl
nop
nop
nop
dec %rdi
lea addresses_WT_ht+0x2f2c, %r12
nop
nop
dec %rcx
movups (%r12), %xmm6
vpextrq $0, %xmm6, %rdx
sub $29066, %rcx
lea addresses_D_ht+0x13b2c, %rbx
nop
xor $28130, %r12
mov (%rbx), %r9w
nop
nop
and %r12, %r12
lea addresses_UC_ht+0xad2c, %rsi
lea addresses_UC_ht+0xfb2c, %rdi
inc %r15
mov $116, %rcx
rep movsb
nop
nop
nop
dec %rsi
lea addresses_WC_ht+0x1ec64, %r15
dec %r9
movw $0x6162, (%r15)
nop
nop
nop
nop
xor $12196, %rdx
lea addresses_normal_ht+0xb910, %rsi
lea addresses_WC_ht+0x12358, %rdi
nop
and $29199, %r12
mov $33, %rcx
rep movsb
nop
nop
nop
nop
dec %rbx
lea addresses_D_ht+0x1d72c, %rsi
lea addresses_WC_ht+0x1a44c, %rdi
nop
sub $19798, %r15
mov $21, %rcx
rep movsw
nop
nop
nop
nop
xor %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r9
push %rbx
push %rcx
push %rsi

// Store
lea addresses_PSE+0xf8fc, %r10
cmp $56867, %r15
mov $0x5152535455565758, %rbx
movq %rbx, %xmm5
vmovups %ymm5, (%r10)
nop
nop
and $53679, %r15

// Store
lea addresses_WT+0x15b2c, %r9
nop
add $1122, %rcx
mov $0x5152535455565758, %r15
movq %r15, (%r9)
nop
xor %r9, %r9

// Store
lea addresses_RW+0xdaec, %rcx
nop
nop
nop
nop
add $64503, %r14
movl $0x51525354, (%rcx)
nop
nop
nop
nop
nop
sub $7197, %rcx

// Store
lea addresses_WC+0x1e72c, %r9
nop
nop
nop
and %r15, %r15
movl $0x51525354, (%r9)
nop
sub %r10, %r10

// Store
lea addresses_WC+0xd9ec, %rsi
nop
nop
nop
cmp %r15, %r15
movl $0x51525354, (%rsi)
xor $24408, %rsi

// Load
lea addresses_PSE+0x4b2c, %rbx
nop
nop
nop
nop
nop
sub %r10, %r10
movups (%rbx), %xmm7
vpextrq $0, %xmm7, %r15
nop
nop
cmp %r15, %r15

// Load
mov $0x830, %r9
nop
add $40558, %r10
movb (%r9), %cl
nop
nop
xor $13140, %rbx

// Faulty Load
lea addresses_WT+0x15b2c, %r15
nop
nop
nop
nop
nop
cmp %rcx, %rcx
mov (%r15), %esi
lea oracles, %r9
and $0xff, %rsi
shlq $12, %rsi
mov (%r9,%rsi,1), %rsi
pop %rsi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 2}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': True, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': True, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 8}, 'dst': {'same': True, 'type': 'addresses_UC_ht', 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 2}, 'dst': {'same': True, 'type': 'addresses_WC_ht', 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 10}, 'dst': {'same': True, 'type': 'addresses_WC_ht', 'congruent': 5}}
{'58': 7654}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
