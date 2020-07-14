.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1eed9, %rsi
lea addresses_A_ht+0x54c9, %rdi
nop
cmp $6816, %r15
mov $95, %rcx
rep movsb
and $40543, %r10
lea addresses_WC_ht+0x18ac9, %rsi
lea addresses_WC_ht+0x10689, %rdi
nop
nop
add $36832, %rdx
mov $23, %rcx
rep movsb
nop
nop
nop
nop
cmp $12765, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r8
push %rax
push %rbx
push %rsi

// Store
lea addresses_D+0x1cac9, %r11
clflush (%r11)
nop
nop
nop
nop
nop
add %rsi, %rsi
mov $0x5152535455565758, %rbx
movq %rbx, %xmm0
movups %xmm0, (%r11)
nop
nop
nop
nop
nop
dec %r11

// Store
lea addresses_WC+0x1be29, %r11
dec %r14
mov $0x5152535455565758, %rsi
movq %rsi, (%r11)
nop
nop
nop
nop
and $13538, %rax

// Store
lea addresses_WC+0x1e0c9, %r8
nop
nop
nop
nop
sub $6786, %rbx
mov $0x5152535455565758, %r14
movq %r14, %xmm5
vmovntdq %ymm5, (%r8)
xor %r14, %r14

// Store
lea addresses_PSE+0x26c9, %r11
nop
sub $24328, %r12
mov $0x5152535455565758, %rsi
movq %rsi, %xmm7
movups %xmm7, (%r11)
nop
nop
nop
nop
nop
add $62906, %r11

// Store
mov $0xe89, %r8
nop
nop
nop
nop
nop
cmp $62278, %r12
mov $0x5152535455565758, %rbx
movq %rbx, %xmm1
movups %xmm1, (%r8)
nop
nop
xor %r8, %r8

// Faulty Load
mov $0x407c020000000ac9, %r14
nop
nop
cmp %rsi, %rsi
movups (%r14), %xmm3
vpextrq $1, %xmm3, %r12
lea oracles, %r11
and $0xff, %r12
shlq $12, %r12
mov (%r11,%r12,1), %r12
pop %rsi
pop %rbx
pop %rax
pop %r8
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_D', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WC', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 6, 'type': 'addresses_WC', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_P', 'AVXalign': False, 'size': 16}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 6, 'type': 'addresses_WC_ht'}}
{'00': 3}
00 00 00
*/
