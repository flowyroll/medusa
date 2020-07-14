.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %rbp
push %rbx
push %rcx
push %rsi
lea addresses_WT_ht+0x15a24, %r8
nop
nop
nop
nop
add %r12, %r12
mov $0x6162636465666768, %rbp
movq %rbp, (%r8)
cmp $8090, %rcx
lea addresses_WT_ht+0x9624, %rbx
cmp $51592, %r15
mov $0x6162636465666768, %rbp
movq %rbp, %xmm0
vmovups %ymm0, (%rbx)
nop
nop
nop
nop
nop
xor %r8, %r8
lea addresses_WC_ht+0x11fe4, %r8
nop
sub $8607, %rsi
mov $0x6162636465666768, %r12
movq %r12, %xmm2
movups %xmm2, (%r8)
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_UC_ht+0x944, %r12
nop
nop
nop
nop
nop
cmp %r15, %r15
mov $0x6162636465666768, %rbp
movq %rbp, (%r12)
nop
nop
xor $32428, %rcx
lea addresses_normal_ht+0x3d84, %r12
nop
nop
nop
dec %r8
mov (%r12), %ebx
nop
nop
nop
nop
add $57708, %rcx
lea addresses_UC_ht+0x15a24, %rcx
nop
add $26379, %rbp
mov $0x6162636465666768, %r12
movq %r12, (%rcx)
nop
nop
dec %rsi
lea addresses_WT_ht+0x8824, %rcx
nop
nop
nop
nop
xor %r15, %r15
movb (%rcx), %r8b
nop
xor $58045, %r12
lea addresses_UC_ht+0xcf24, %r15
nop
nop
nop
nop
add %rbp, %rbp
mov (%r15), %cx
nop
nop
nop
xor %rcx, %rcx
lea addresses_normal_ht+0x13a24, %r15
nop
nop
nop
nop
nop
sub %rcx, %rcx
movb (%r15), %bl
nop
xor %rbp, %rbp
pop %rsi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WC+0x8d3c, %r11
nop
nop
nop
add $59950, %r9
mov $0x5152535455565758, %rax
movq %rax, %xmm0
vmovups %ymm0, (%r11)
and %rcx, %rcx

// Store
lea addresses_WC+0x1bf34, %r15
nop
nop
nop
sub $10806, %rbp
movl $0x51525354, (%r15)
nop
nop
nop
nop
nop
sub $60016, %r15

// REPMOV
lea addresses_D+0x15434, %rsi
lea addresses_US+0xc224, %rdi
clflush (%rdi)
nop
nop
nop
sub $31205, %r9
mov $29, %rcx
rep movsw
xor $6073, %r9

// Store
mov $0x7cfaa40000000094, %r11
nop
nop
nop
inc %r9
mov $0x5152535455565758, %rbp
movq %rbp, %xmm4
movups %xmm4, (%r11)
nop
nop
nop
nop
nop
add $58112, %rcx

// Store
lea addresses_UC+0x11854, %r9
nop
nop
nop
nop
and $42776, %r11
movw $0x5152, (%r9)
dec %rdi

// REPMOV
lea addresses_UC+0x134c4, %rsi
lea addresses_PSE+0xbb24, %rdi
nop
nop
and $64694, %r15
mov $51, %rcx
rep movsl
nop
nop
nop
nop
add $22005, %r15

// Store
lea addresses_US+0x1d724, %r9
nop
nop
nop
nop
nop
add %r15, %r15
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
vmovntdq %ymm6, (%r9)
nop
and $39444, %r9

// Store
lea addresses_WC+0xc6c4, %r9
nop
nop
nop
nop
nop
dec %rbp
movw $0x5152, (%r9)
nop
nop
nop
nop
dec %r11

// Load
mov $0xc6, %rcx
nop
nop
nop
add %r9, %r9
mov (%rcx), %ax
nop
nop
sub $39505, %r11

// Store
lea addresses_D+0x10224, %rdi
nop
nop
cmp %rcx, %rcx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm0
movups %xmm0, (%rdi)
nop
and %r9, %r9

// Store
lea addresses_WC+0x5824, %r15
nop
sub %rdi, %rdi
mov $0x5152535455565758, %r9
movq %r9, %xmm0
vmovups %ymm0, (%r15)
nop
nop
nop
nop
nop
sub %rcx, %rcx

// Faulty Load
lea addresses_D+0x10224, %rcx
nop
nop
nop
nop
cmp %rax, %rax
mov (%rcx), %r9d
lea oracles, %rbp
and $0xff, %r9
shlq $12, %r9
mov (%rbp,%r9,1), %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_WC', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_US'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_D'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_NC', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_PSE'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_UC'}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_US', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC', 'congruent': 3}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_P', 'congruent': 0}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC', 'congruent': 9}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC_ht', 'congruent': 5}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal_ht', 'congruent': 3}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC_ht', 'congruent': 10}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_normal_ht', 'congruent': 9}}
{'c7': 2061}
c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7 c7
*/
