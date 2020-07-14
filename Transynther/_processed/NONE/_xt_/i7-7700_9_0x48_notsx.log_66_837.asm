.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x308c, %rsi
lea addresses_UC_ht+0xbb6c, %rdi
clflush (%rsi)
nop
nop
nop
cmp %rbx, %rbx
mov $10, %rcx
rep movsl
nop
and $11822, %r12
lea addresses_normal_ht+0x7d5c, %r10
clflush (%r10)
nop
inc %rcx
movb $0x61, (%r10)
nop
nop
nop
nop
lfence
lea addresses_D_ht+0x36cc, %rdi
nop
nop
nop
nop
and %r15, %r15
movl $0x61626364, (%rdi)
nop
nop
sub %r10, %r10
lea addresses_WC_ht+0x38a8, %r12
sub $36264, %rdi
movw $0x6162, (%r12)
xor %rbx, %rbx
lea addresses_normal_ht+0x1e618, %r12
nop
nop
nop
inc %rcx
movl $0x61626364, (%r12)
nop
nop
nop
nop
nop
sub $17600, %r10
lea addresses_normal_ht+0x17acc, %rsi
lea addresses_D_ht+0x1b38c, %rdi
clflush (%rdi)
nop
nop
nop
nop
xor $2211, %rbp
mov $27, %rcx
rep movsq
nop
nop
add $38120, %rbx
lea addresses_UC_ht+0xd920, %rsi
lea addresses_WT_ht+0x1e0ec, %rdi
nop
nop
nop
lfence
mov $107, %rcx
rep movsq
nop
cmp %r10, %r10
lea addresses_D_ht+0x103ac, %rbx
nop
nop
nop
nop
nop
xor %rcx, %rcx
mov $0x6162636465666768, %r10
movq %r10, (%rbx)
nop
nop
nop
nop
nop
cmp $9766, %r10
lea addresses_WC_ht+0x1ae34, %rsi
lea addresses_WT_ht+0x17b8c, %rdi
clflush (%rsi)
nop
nop
nop
cmp $4805, %rbx
mov $5, %rcx
rep movsl
sub $28254, %r15
lea addresses_D_ht+0xc68c, %rbx
nop
nop
nop
nop
cmp %r12, %r12
mov (%rbx), %r15
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_WT_ht+0x43cc, %rsi
lea addresses_normal_ht+0xabe4, %rdi
nop
nop
cmp %rbx, %rbx
mov $43, %rcx
rep movsq
nop
nop
nop
dec %r10
lea addresses_UC_ht+0xca8c, %rdi
dec %r10
movups (%rdi), %xmm5
vpextrq $1, %xmm5, %rsi
nop
add %rbp, %rbp
lea addresses_WT_ht+0x1a0cc, %rbp
nop
nop
nop
nop
add $20429, %rsi
vmovups (%rbp), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rbx
nop
nop
nop
nop
nop
dec %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %rbx
push %rcx
push %rdx
push %rsi

// Store
lea addresses_D+0xfe8c, %rbx
xor $40117, %r12
movw $0x5152, (%rbx)
nop
nop
nop
nop
nop
and %rdx, %rdx

// Store
lea addresses_UC+0x1e5fc, %rsi
and %r14, %r14
movl $0x51525354, (%rsi)
nop
nop
nop
nop
nop
and %r14, %r14

// Store
lea addresses_A+0x1664c, %r14
nop
nop
cmp %r12, %r12
mov $0x5152535455565758, %rsi
movq %rsi, (%r14)
nop
nop
nop
nop
xor %r11, %r11

// Store
lea addresses_WC+0xcc3a, %rcx
nop
sub $30624, %rdx
movw $0x5152, (%rcx)
add %r14, %r14

// Load
lea addresses_PSE+0x1900c, %rdx
nop
nop
nop
nop
and $888, %r12
mov (%rdx), %rsi
nop
nop
inc %r11

// Store
mov $0x5868470000000a8c, %rbx
nop
nop
nop
dec %r12
mov $0x5152535455565758, %rsi
movq %rsi, %xmm7
movups %xmm7, (%rbx)
nop
nop
nop
nop
xor %rdx, %rdx

// Load
lea addresses_normal+0x1fa8c, %r12
nop
nop
nop
xor %r14, %r14
mov (%r12), %r11d
cmp $55876, %rcx

// Store
mov $0xc90, %rdx
nop
nop
inc %rcx
mov $0x5152535455565758, %rsi
movq %rsi, (%rdx)
cmp %rsi, %rsi

// Store
lea addresses_A+0x1520c, %rbx
xor %r11, %r11
movb $0x51, (%rbx)
nop
nop
nop
cmp %rsi, %rsi

// Store
lea addresses_normal+0x1912c, %rsi
nop
nop
nop
nop
inc %rcx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm1
vmovups %ymm1, (%rsi)
nop
add %rsi, %rsi

// Load
lea addresses_normal+0x2c8c, %rcx
nop
cmp $50301, %rbx
movb (%rcx), %r14b
nop
nop
sub $16848, %rbx

// Load
lea addresses_A+0xbe9c, %rsi
nop
nop
nop
nop
inc %r12
mov (%rsi), %rdx
nop
sub %rdx, %rdx

// Load
lea addresses_US+0x828c, %rbx
nop
xor %rsi, %rsi
vmovups (%rbx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rdx
nop
sub $47513, %r12

// Faulty Load
lea addresses_D+0x768c, %rdx
cmp $37169, %rsi
movb (%rdx), %r12b
lea oracles, %r14
and $0xff, %r12
shlq $12, %r12
mov (%r14,%r12,1), %r12
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_A', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC', 'congruent': 0}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_PSE', 'congruent': 7}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_NC', 'congruent': 10}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal', 'congruent': 10}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_P', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal', 'congruent': 2}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_normal', 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_A', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_US', 'congruent': 10}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal_ht', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 11}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 6}}
{'36': 66}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
