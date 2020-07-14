.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x2238, %rsi
lea addresses_normal_ht+0xa3e4, %rdi
nop
add $1269, %r15
mov $57, %rcx
rep movsb
nop
nop
nop
nop
xor %r14, %r14
lea addresses_WC_ht+0x9064, %rax
nop
nop
add $13568, %rbx
mov (%rax), %r14d
dec %rsi
lea addresses_D_ht+0x248, %rbx
nop
nop
nop
nop
and $15104, %rax
movb (%rbx), %r15b
cmp %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r8
push %r9
push %rbx
push %rdi

// Store
lea addresses_PSE+0x73e4, %rbx
nop
nop
nop
sub %r8, %r8
movw $0x5152, (%rbx)

// Exception!!!
nop
nop
mov (0), %r12
nop
nop
sub $45213, %r12

// Store
lea addresses_WT+0x73e4, %rdi
nop
nop
nop
and $54783, %r9
mov $0x5152535455565758, %r12
movq %r12, %xmm5
movups %xmm5, (%rdi)
nop
nop
nop
nop
nop
cmp $17341, %r14

// Store
mov $0x964, %rdi
nop
nop
nop
nop
sub $18388, %r9
movw $0x5152, (%rdi)
nop
nop
nop
inc %r8

// Store
mov $0x2e4d190000000364, %r8
nop
nop
add %r9, %r9
mov $0x5152535455565758, %r11
movq %r11, %xmm0
movups %xmm0, (%r8)
nop
sub $56407, %rbx

// Store
lea addresses_WT+0x189aa, %r11
xor %r9, %r9
mov $0x5152535455565758, %rdi
movq %rdi, %xmm5
vmovntdq %ymm5, (%r11)
nop
nop
nop
nop
cmp $24802, %r9

// Faulty Load
lea addresses_D+0x1cbe4, %r12
nop
nop
nop
nop
nop
dec %r9
vmovups (%r12), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rbx
lea oracles, %r11
and $0xff, %rbx
shlq $12, %rbx
mov (%r11,%rbx,1), %rbx
pop %rdi
pop %rbx
pop %r9
pop %r8
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_P'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_WT'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'36': 26}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
