.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r15
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x14c5a, %rbx
nop
nop
nop
sub %r12, %r12
vmovups (%rbx), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r11
xor $50151, %rax
lea addresses_normal_ht+0x1559b, %r15
nop
nop
nop
add $40682, %r8
mov $0x6162636465666768, %r13
movq %r13, %xmm4
vmovups %ymm4, (%r15)
inc %r12
lea addresses_WC_ht+0x1c55a, %r11
nop
nop
sub $35868, %r12
mov $0x6162636465666768, %r8
movq %r8, %xmm5
vmovups %ymm5, (%r11)
sub %rax, %rax
lea addresses_A_ht+0x2eda, %rsi
lea addresses_normal_ht+0x18d9a, %rdi
nop
cmp $41977, %r12
mov $127, %rcx
rep movsw
sub $43263, %rdi
lea addresses_UC_ht+0x97f6, %r11
nop
nop
lfence
mov (%r11), %di
inc %rax
lea addresses_WT_ht+0x19a, %rcx
nop
nop
nop
nop
add $28393, %r8
movb (%rcx), %bl
nop
nop
sub %rdi, %rdi
lea addresses_WT_ht+0x1afd, %rcx
nop
nop
nop
nop
nop
lfence
mov $0x6162636465666768, %rax
movq %rax, %xmm0
vmovups %ymm0, (%rcx)
cmp $46212, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r8
push %rax
push %rbp
push %rbx

// Store
lea addresses_D+0xc0ec, %rbx
nop
sub %r8, %r8
movb $0x51, (%rbx)
nop
nop
nop
nop
nop
cmp $41504, %rbp

// Store
lea addresses_RW+0x1a59a, %r11
nop
xor $39546, %r15
mov $0x5152535455565758, %r12
movq %r12, %xmm4
vmovups %ymm4, (%r11)
nop
dec %r8

// Load
lea addresses_WT+0x1a902, %r12
nop
nop
nop
nop
nop
dec %rax
movntdqa (%r12), %xmm4
vpextrq $1, %xmm4, %r11
nop
nop
nop
nop
nop
add %r12, %r12

// Store
mov $0x366b01000000098a, %rax
clflush (%rax)
nop
nop
nop
nop
add $33485, %r12
movl $0x51525354, (%rax)
nop
dec %rax

// Store
lea addresses_US+0x129ff, %r8
nop
add $55522, %r12
movl $0x51525354, (%r8)
add %rbp, %rbp

// Store
lea addresses_UC+0x1435a, %r15
nop
nop
nop
nop
add $57987, %r11
movl $0x51525354, (%r15)
xor %rbp, %rbp

// Load
lea addresses_RW+0x1a59a, %rbx
nop
nop
and %rbp, %rbp
mov (%rbx), %r15d
nop
nop
nop
nop
cmp %rbp, %rbp

// Load
lea addresses_WC+0x1f79a, %rbx
nop
nop
nop
nop
nop
and %r11, %r11
mov (%rbx), %r15d
nop
nop
cmp $4046, %rax

// Faulty Load
lea addresses_RW+0x1a59a, %r11
nop
nop
nop
nop
and %r12, %r12
mov (%r11), %ax
lea oracles, %rbx
and $0xff, %rax
shlq $12, %rax
mov (%rbx,%rax,1), %rax
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': True, 'size': 16, 'type': 'addresses_RW', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_RW', 'congruent': 0}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT', 'congruent': 3}}
{'dst': {'same': False, 'NT': True, 'AVXalign': True, 'size': 4, 'type': 'addresses_NC', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_US', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC', 'congruent': 6}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_RW', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_WC', 'congruent': 7}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_RW', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 5}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 10}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 0}, 'OP': 'STOR'}
{'58': 1}
58
*/
