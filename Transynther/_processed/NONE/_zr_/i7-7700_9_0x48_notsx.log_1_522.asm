.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_A+0x2e2e, %rsi
nop
nop
nop
nop
add $17955, %r15
mov $0x5152535455565758, %r14
movq %r14, (%rsi)
nop
nop
nop
nop
nop
inc %rcx

// Store
lea addresses_RW+0x1664e, %r11
nop
nop
nop
dec %rsi
mov $0x5152535455565758, %rcx
movq %rcx, (%r11)
nop
nop
nop
add %r15, %r15

// Store
mov $0x2ae07400000000ce, %rcx
nop
nop
add %r15, %r15
mov $0x5152535455565758, %rsi
movq %rsi, (%rcx)
nop
nop
nop
nop
nop
inc %rdi

// Store
lea addresses_D+0x120ce, %r11
nop
nop
nop
nop
nop
xor $144, %rbx
mov $0x5152535455565758, %rcx
movq %rcx, %xmm0
movups %xmm0, (%r11)
sub $4530, %r15

// Store
lea addresses_PSE+0x1058e, %r15
clflush (%r15)
nop
nop
nop
nop
nop
inc %rdi
mov $0x5152535455565758, %rbx
movq %rbx, %xmm6
vmovups %ymm6, (%r15)
nop
nop
nop
dec %r11

// Store
lea addresses_US+0x34ce, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
cmp %r11, %r11
movl $0x51525354, (%rsi)
nop
nop
nop
sub %rcx, %rcx

// Store
lea addresses_A+0x1e538, %rbx
nop
nop
nop
nop
cmp $51569, %rcx
movw $0x5152, (%rbx)
xor $15462, %rsi

// Load
lea addresses_A+0x15cce, %rsi
dec %rcx
mov (%rsi), %r11
nop
add $8764, %rcx

// Store
lea addresses_UC+0x1874e, %rbx
nop
nop
and $45587, %r11
movl $0x51525354, (%rbx)
nop
dec %r15

// Faulty Load
lea addresses_A+0x15cce, %r15
clflush (%r15)
and $9497, %r14
mov (%r15), %ebx
lea oracles, %rcx
and $0xff, %rbx
shlq $12, %rbx
mov (%rcx,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_RW', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_NC', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_PSE', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_US', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A', 'congruent': 1}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_A', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC', 'congruent': 5}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A', 'congruent': 0}}
<gen_prepare_buffer>
{'00': 1}
00
*/
