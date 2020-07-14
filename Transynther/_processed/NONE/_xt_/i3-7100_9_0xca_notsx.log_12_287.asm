.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xac94, %rsi
lea addresses_WT_ht+0x2926, %rdi
nop
nop
nop
nop
dec %rax
mov $0, %rcx
rep movsl
mfence
lea addresses_WC_ht+0x7e6, %rcx
nop
nop
sub $47371, %r13
vmovups (%rcx), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rax
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_WT_ht+0x1526, %r14
cmp $50693, %r8
movb (%r14), %al
xor %rsi, %rsi
lea addresses_A_ht+0x1e0ac, %rsi
lea addresses_UC_ht+0x14216, %rdi
xor %r9, %r9
mov $120, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_A_ht+0xaf26, %r14
nop
nop
nop
nop
nop
xor %rsi, %rsi
mov (%r14), %r9w
nop
nop
xor $65222, %r8
lea addresses_A_ht+0x5c26, %r13
sub %r8, %r8
movups (%r13), %xmm5
vpextrq $1, %xmm5, %rcx
nop
nop
nop
add $15690, %r9
lea addresses_A_ht+0x12926, %rsi
lea addresses_WC_ht+0x46de, %rdi
nop
nop
nop
nop
and $30803, %r9
mov $23, %rcx
rep movsl
nop
nop
cmp %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r9
push %rax
push %rdi
push %rsi

// Store
lea addresses_RW+0xc6a6, %r9
nop
cmp %r11, %r11
mov $0x5152535455565758, %rsi
movq %rsi, %xmm3
vmovaps %ymm3, (%r9)
nop
nop
nop
nop
xor %r11, %r11

// Load
lea addresses_WC+0x15c9a, %rsi
add %r12, %r12
mov (%rsi), %eax
nop
cmp $64794, %r12

// Store
mov $0x604f1400000001d2, %rdi
nop
nop
nop
nop
cmp $8550, %r10
movw $0x5152, (%rdi)
nop
nop
xor %r9, %r9

// Store
lea addresses_normal+0x4526, %r9
nop
nop
nop
dec %r12
mov $0x5152535455565758, %r11
movq %r11, %xmm2
vmovups %ymm2, (%r9)
nop
nop
nop
nop
add $25133, %rdi

// Store
lea addresses_PSE+0x1fda6, %rsi
nop
nop
add %rdi, %rdi
movb $0x51, (%rsi)
nop
nop
nop
nop
nop
sub $25747, %rax

// Store
lea addresses_PSE+0x11126, %r12
nop
nop
nop
add %r10, %r10
mov $0x5152535455565758, %rdi
movq %rdi, %xmm1
movups %xmm1, (%r12)
nop
nop
nop
dec %r9

// Faulty Load
lea addresses_D+0x12526, %r9
and $43537, %r10
movups (%r9), %xmm6
vpextrq $0, %xmm6, %r11
lea oracles, %r9
and $0xff, %r11
shlq $12, %r11
mov (%r9,%r11,1), %r11
pop %rsi
pop %rdi
pop %rax
pop %r9
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 1, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_RW', 'size': 32, 'AVXalign': True}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WC', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_NC', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_normal', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_PSE', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_PSE', 'size': 16, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'src': {'same': True, 'congruent': 7, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': True}}
{'36': 12}
36 36 36 36 36 36 36 36 36 36 36 36
*/
