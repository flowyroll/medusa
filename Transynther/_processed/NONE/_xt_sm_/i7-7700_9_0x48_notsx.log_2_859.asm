.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1a448, %r15
nop
nop
nop
add %r14, %r14
mov $0x6162636465666768, %r13
movq %r13, (%r15)
xor $40955, %r12
lea addresses_A_ht+0xa350, %rbx
clflush (%rbx)
sub $3615, %r13
mov $0x6162636465666768, %rcx
movq %rcx, (%rbx)
nop
nop
nop
nop
nop
add $39185, %rcx
lea addresses_UC_ht+0x11750, %r15
nop
nop
nop
nop
xor %r8, %r8
movb (%r15), %bl
nop
nop
nop
nop
nop
cmp %r8, %r8
lea addresses_D_ht+0x14e10, %rbx
nop
nop
nop
nop
nop
sub %r13, %r13
movl $0x61626364, (%rbx)
nop
nop
nop
nop
nop
dec %r14
lea addresses_A_ht+0x1114e, %rsi
lea addresses_normal_ht+0x15f50, %rdi
nop
nop
nop
nop
sub $57173, %r13
mov $91, %rcx
rep movsw
nop
nop
nop
nop
add $9461, %r8
lea addresses_normal_ht+0x1e3d0, %rsi
lea addresses_WC_ht+0xc35a, %rdi
nop
nop
nop
xor $15804, %r15
mov $106, %rcx
rep movsl
nop
cmp %r8, %r8
lea addresses_UC_ht+0xeb50, %r8
nop
add $2903, %rdi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm7
vmovups %ymm7, (%r8)
nop
sub $19199, %r15
lea addresses_WC_ht+0x120e0, %r8
nop
nop
nop
inc %rdi
movw $0x6162, (%r8)
nop
cmp $6657, %rbx
lea addresses_WC_ht+0x1d0, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
add $12835, %rcx
mov $0x6162636465666768, %r8
movq %r8, %xmm6
movups %xmm6, (%rsi)
sub %r14, %r14
lea addresses_UC_ht+0x1b44, %rsi
lea addresses_normal_ht+0x860c, %rdi
nop
nop
nop
nop
add %r13, %r13
mov $13, %rcx
rep movsq
nop
and $53438, %rsi
lea addresses_A_ht+0x5f90, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
dec %r13
movb $0x61, (%rdi)
add %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %rax
push %rcx
push %rdi
push %rdx

// Store
lea addresses_normal+0x8f50, %r10
nop
nop
nop
nop
nop
sub %rcx, %rcx
mov $0x5152535455565758, %r11
movq %r11, %xmm2
movups %xmm2, (%r10)
nop
nop
nop
nop
and $16837, %rdi

// Load
lea addresses_A+0x4f50, %rax
cmp %rcx, %rcx
mov (%rax), %r10d
xor $55295, %r11

// Load
lea addresses_PSE+0x3750, %r10
nop
nop
nop
nop
nop
sub %rdx, %rdx
movb (%r10), %r14b
nop
nop
dec %rdi

// Store
mov $0x5e6063000000051d, %rcx
nop
nop
nop
dec %r10
mov $0x5152535455565758, %r14
movq %r14, %xmm2
vmovups %ymm2, (%rcx)
nop
nop
nop
nop
nop
sub %rax, %rax

// Store
lea addresses_WT+0x1f50, %rcx
nop
sub $23248, %r14
mov $0x5152535455565758, %r11
movq %r11, (%rcx)
nop
dec %r14

// Store
lea addresses_PSE+0xf0b0, %r14
nop
nop
nop
nop
nop
cmp %rdx, %rdx
mov $0x5152535455565758, %r10
movq %r10, (%r14)
nop
nop
nop
nop
nop
xor %rax, %rax

// Store
lea addresses_US+0x3580, %rdx
nop
sub $54229, %rdi
movw $0x5152, (%rdx)
nop
nop
nop
xor $17065, %r11

// Store
lea addresses_PSE+0x1dcd8, %r11
nop
nop
nop
nop
nop
xor $17336, %r14
mov $0x5152535455565758, %rdi
movq %rdi, (%r11)
nop
nop
nop
xor %rax, %rax

// Load
lea addresses_A+0x7a50, %r14
nop
nop
nop
nop
and %r10, %r10
mov (%r14), %cx
nop
nop
nop
cmp %rdx, %rdx

// Load
mov $0x256, %rax
nop
dec %r11
mov (%rax), %r14d
nop
cmp %rdx, %rdx

// Store
mov $0x3ef4660000000550, %r14
clflush (%r14)
dec %rcx
movw $0x5152, (%r14)
nop
nop
nop
and %rdi, %rdi

// Store
mov $0x88ba900000008d0, %r11
add %rcx, %rcx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm3
vmovups %ymm3, (%r11)
nop
nop
cmp %r11, %r11

// Faulty Load
lea addresses_normal+0x8f50, %r11
nop
nop
nop
nop
nop
xor $17585, %rcx
movb (%r11), %al
lea oracles, %rdi
and $0xff, %rax
shlq $12, %rax
mov (%rdi,%rax,1), %rax
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal', 'congruent': 0}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal', 'congruent': 0}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A', 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_PSE', 'congruent': 11}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_PSE', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_US', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_PSE', 'congruent': 1}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A', 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_P', 'congruent': 1}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_NC', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 7}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_UC_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 8}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 11}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}}
{'dst': {'same': True, 'congruent': 1, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A_ht', 'congruent': 6}, 'OP': 'STOR'}
{'58': 2}
58 58
*/
