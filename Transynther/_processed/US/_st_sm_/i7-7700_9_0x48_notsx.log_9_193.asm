.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r14
push %rax
push %rbp
push %rbx
lea addresses_UC_ht+0x4640, %r12
dec %rax
movw $0x6162, (%r12)
nop
nop
nop
nop
sub %r13, %r13
lea addresses_WT_ht+0x9860, %r13
and %r11, %r11
movb (%r13), %bl
nop
nop
xor $25417, %r12
lea addresses_UC_ht+0xafa0, %rbp
nop
xor $60324, %r12
movb (%rbp), %al
nop
nop
nop
nop
nop
inc %r11
lea addresses_WC_ht+0xd840, %rbp
nop
nop
nop
nop
and %r11, %r11
mov $0x6162636465666768, %r12
movq %r12, %xmm6
movups %xmm6, (%rbp)
nop
and $45631, %rbx
lea addresses_A_ht+0xde40, %rax
nop
nop
sub $47589, %r13
mov $0x6162636465666768, %r11
movq %r11, %xmm2
movups %xmm2, (%rax)
nop
nop
nop
nop
cmp %r12, %r12
lea addresses_WT_ht+0xac30, %r14
clflush (%r14)
nop
nop
nop
nop
nop
add $25878, %r11
vmovups (%r14), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %r12
nop
nop
sub $30318, %r11
lea addresses_UC_ht+0x9c40, %r12
and %r14, %r14
movb (%r12), %r13b
nop
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_A_ht+0xc5c0, %r12
cmp %rax, %rax
movb (%r12), %bl
nop
nop
sub $46229, %rbx
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r9
push %rcx
push %rdi
push %rdx

// Store
mov $0x26a70f000000057a, %r10
nop
nop
nop
nop
nop
xor %rdi, %rdi
movl $0x51525354, (%r10)
nop
and $65201, %r14

// Store
lea addresses_UC+0x5743, %rcx
nop
nop
nop
nop
inc %r10
movb $0x51, (%rcx)
nop
add %rdi, %rdi

// Store
lea addresses_US+0xba40, %r10
nop
nop
nop
nop
add %r9, %r9
mov $0x5152535455565758, %rdi
movq %rdi, %xmm6
movntdq %xmm6, (%r10)
inc %rcx

// Store
lea addresses_WC+0x1b240, %r12
nop
nop
nop
nop
cmp $37224, %rdx
mov $0x5152535455565758, %r10
movq %r10, %xmm6
vmovups %ymm6, (%r12)
inc %r12

// Store
lea addresses_D+0x9900, %rdx
cmp %rdi, %rdi
mov $0x5152535455565758, %r14
movq %r14, (%rdx)
cmp %rcx, %rcx

// Faulty Load
lea addresses_US+0xba40, %r14
cmp %r12, %r12
mov (%r14), %rdx
lea oracles, %r14
and $0xff, %rdx
shlq $12, %rdx
mov (%r14,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_NC', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_US', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D', 'congruent': 5}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': True, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 10}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 2}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 10}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_A_ht', 'congruent': 4}}
{'58': 9}
58 58 58 58 58 58 58 58 58
*/
