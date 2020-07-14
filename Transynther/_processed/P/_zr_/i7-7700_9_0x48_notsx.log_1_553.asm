.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %rax
push %rbx
push %rdx
push %rsi
lea addresses_WC_ht+0x1cb76, %rsi
nop
nop
nop
cmp $8707, %r13
mov (%rsi), %rbx
nop
nop
nop
sub %rax, %rax
lea addresses_UC_ht+0xa9f6, %r12
nop
nop
sub %rdx, %rdx
mov $0x6162636465666768, %r11
movq %r11, %xmm2
vmovups %ymm2, (%r12)
nop
mfence
lea addresses_UC_ht+0x19ff6, %rsi
nop
nop
and %rax, %rax
mov $0x6162636465666768, %r13
movq %r13, %xmm0
vmovups %ymm0, (%rsi)
nop
nop
nop
cmp %r13, %r13
lea addresses_WC_ht+0xd156, %r11
sub %rdx, %rdx
mov (%r11), %r13w
nop
nop
nop
cmp $1301, %rax
lea addresses_A_ht+0x79f6, %rax
nop
nop
add $40237, %rbx
mov $0x6162636465666768, %r11
movq %r11, (%rax)
nop
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_UC_ht+0x1cef6, %rsi
nop
nop
nop
sub %rax, %rax
mov (%rsi), %edx
nop
nop
nop
nop
and $50169, %rsi
lea addresses_WC_ht+0x56f6, %rbx
nop
nop
nop
nop
and $50445, %r11
and $0xffffffffffffffc0, %rbx
movntdqa (%rbx), %xmm2
vpextrq $0, %xmm2, %r13
nop
nop
nop
nop
add $59940, %rdx
lea addresses_WT_ht+0x2b6, %r12
nop
sub $29037, %r11
movl $0x61626364, (%r12)
nop
nop
nop
inc %r13
pop %rsi
pop %rdx
pop %rbx
pop %rax
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r15
push %r8
push %rax
push %rdi

// Store
lea addresses_normal+0xb9f6, %r10
nop
nop
inc %r15
movw $0x5152, (%r10)
nop
nop
add %r14, %r14

// Faulty Load
mov $0x9f6, %r10
nop
nop
cmp %rdi, %rdi
movb (%r10), %r15b
lea oracles, %r8
and $0xff, %r15
shlq $12, %r15
mov (%r8,%r15,1), %r15
pop %rdi
pop %rax
pop %r8
pop %r15
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_P', 'congruent': 0}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal', 'congruent': 11}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_P', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 6}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 9}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 5}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 11}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 8}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 5}, 'OP': 'STOR'}
{'00': 1}
00
*/
