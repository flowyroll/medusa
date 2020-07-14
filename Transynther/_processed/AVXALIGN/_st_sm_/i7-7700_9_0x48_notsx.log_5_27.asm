.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %rcx
push %rdi
push %rdx
lea addresses_D_ht+0xdf32, %rdx
nop
nop
nop
nop
nop
sub %rcx, %rcx
movl $0x61626364, (%rdx)
sub %rdx, %rdx
lea addresses_D_ht+0x1d7b2, %r15
and $32390, %rdi
mov $0x6162636465666768, %r13
movq %r13, %xmm5
movups %xmm5, (%r15)
nop
nop
nop
nop
nop
and $12437, %rcx
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %rax
push %rbp
push %rbx
push %rcx

// Store
lea addresses_RW+0x8802, %rax
nop
xor %rbp, %rbp
movl $0x51525354, (%rax)
nop
nop
nop
sub %r14, %r14

// Store
lea addresses_A+0x15732, %r14
nop
nop
nop
nop
nop
cmp $56191, %rbx
movw $0x5152, (%r14)
nop
nop
dec %r11

// Store
lea addresses_WC+0xb132, %rax
nop
nop
nop
nop
nop
add %r14, %r14
movl $0x51525354, (%rax)
nop
nop
nop
xor $56345, %rcx

// Store
lea addresses_RW+0x1dd32, %rbp
nop
nop
nop
nop
nop
inc %r11
mov $0x5152535455565758, %rbx
movq %rbx, (%rbp)
xor %rbp, %rbp

// Load
mov $0x43d3a90000000732, %r15
nop
nop
nop
nop
cmp $61837, %r14
vmovups (%r15), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rcx
nop
nop
nop
xor $4626, %rcx

// Store
lea addresses_A+0x3732, %r15
sub %rbx, %rbx
movw $0x5152, (%r15)
nop
nop
inc %rax

// Faulty Load
lea addresses_A+0x15732, %r11
nop
nop
xor %r14, %r14
mov (%r11), %cx
lea oracles, %rbp
and $0xff, %rcx
shlq $12, %rcx
mov (%rbp,%rcx,1), %rcx
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_RW', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_A', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_RW', 'congruent': 8}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 9}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A', 'congruent': 5}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_A', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 5}, 'OP': 'STOR'}
{'52': 5}
52 52 52 52 52
*/
