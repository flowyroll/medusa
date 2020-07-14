.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x12fde, %rsi
lea addresses_WC_ht+0x13632, %rdi
clflush (%rsi)
nop
and %r9, %r9
mov $85, %rcx
rep movsl
nop
nop
nop
inc %r10
lea addresses_WT_ht+0x9a32, %r13
nop
nop
nop
cmp %r9, %r9
movb (%r13), %cl
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_normal_ht+0x1e232, %rsi
nop
nop
nop
xor $22198, %r14
mov (%rsi), %r9
cmp %r10, %r10
lea addresses_A_ht+0x2e32, %rcx
nop
nop
xor %r9, %r9
mov (%rcx), %r14w
nop
nop
and %rdi, %rdi
lea addresses_WT_ht+0x1a232, %r10
sub %rcx, %rcx
mov (%r10), %rdi
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_normal_ht+0x39ce, %rsi
lea addresses_normal_ht+0x1358a, %rdi
nop
nop
nop
nop
nop
and %r10, %r10
mov $49, %rcx
rep movsb
nop
nop
nop
inc %rsi
lea addresses_A_ht+0xb1e2, %rsi
lea addresses_D_ht+0xf12, %rdi
nop
xor $56992, %r13
mov $70, %rcx
rep movsq
nop
nop
nop
nop
add $43333, %r9
lea addresses_UC_ht+0xaa02, %rcx
nop
nop
cmp %r9, %r9
movw $0x6162, (%rcx)
nop
nop
nop
and %r9, %r9
lea addresses_WT_ht+0x12432, %r9
nop
xor %rsi, %rsi
mov $0x6162636465666768, %r13
movq %r13, %xmm7
movups %xmm7, (%r9)
nop
nop
nop
nop
nop
mfence
lea addresses_normal_ht+0x8a8a, %r10
cmp %rcx, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
movups %xmm5, (%r10)
nop
nop
xor %rdi, %rdi
lea addresses_WC_ht+0x1bb72, %r9
clflush (%r9)
nop
cmp %rdi, %rdi
mov (%r9), %rsi
nop
and %r14, %r14
lea addresses_WT_ht+0x4d42, %r9
nop
nop
nop
nop
nop
sub %r14, %r14
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
vmovups %ymm6, (%r9)
nop
and $15455, %rcx
lea addresses_WC_ht+0x16a32, %rsi
lea addresses_WC_ht+0x150bb, %rdi
clflush (%rsi)
nop
nop
nop
and %r11, %r11
mov $48, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_D_ht+0xeef2, %r10
nop
inc %rdi
movb (%r10), %cl
nop
nop
nop
nop
nop
sub %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %rax
push %rbp
push %rdi
push %rsi

// Store
lea addresses_WT+0xc832, %rax
clflush (%rax)
add $2800, %rsi
mov $0x5152535455565758, %r12
movq %r12, %xmm5
movups %xmm5, (%rax)
nop
nop
nop
nop
nop
sub $51139, %rax

// Store
lea addresses_UC+0xd632, %r13
nop
nop
nop
nop
add $30675, %r14
mov $0x5152535455565758, %rbp
movq %rbp, %xmm2
vmovups %ymm2, (%r13)
nop
nop
nop
add %rdi, %rdi

// Store
mov $0x70b46d0000000d32, %r12
nop
nop
nop
xor %rbp, %rbp
mov $0x5152535455565758, %r14
movq %r14, (%r12)
nop
nop
nop
nop
nop
add %rdi, %rdi

// Store
lea addresses_WT+0x1632, %r13
and $55312, %r14
movw $0x5152, (%r13)
sub $31416, %rdi

// Store
lea addresses_WC+0x9012, %rsi
nop
nop
nop
nop
cmp %rax, %rax
mov $0x5152535455565758, %rbp
movq %rbp, (%rsi)
inc %r13

// Faulty Load
lea addresses_US+0x7a32, %r12
xor %r14, %r14
movups (%r12), %xmm6
vpextrq $0, %xmm6, %rdi
lea oracles, %r12
and $0xff, %rdi
shlq $12, %rdi
mov (%r12,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 10, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 7, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 4, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': True, 'congruent': 9, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 11, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 11, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': True, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 5, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 3, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 2, 'size': 1, 'same': False, 'NT': False}}
{'53': 79, 'ef': 5, '3c': 2, 'ff': 9644, '02': 1, '01': 12, '48': 217, '80': 1, '46': 45, 'de': 2, 'ac': 87, '45': 64, '49': 1, '00': 700, 'a9': 1, '44': 1, 'e0': 1}
ff ff ff 00 ff ff ff ff ff ff 45 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 45 ff ff 00 ff 53 ff ff 00 ff ff ff 01 ff ff ff 00 ff ff ff ff ff ff ff 00 00 ff ff 00 ff ff ff ff ff ff 00 ff ff ff ff ff ff ff ff 00 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 00 ff ff ff ff ff ff ff ff 00 48 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 48 ff ff ff ff ff ff ff ff ff ff ff ff ff 00 ff ff ff ff 00 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 48 00 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 53 ff ff ff ff ac 00 ff ff ff ff ff ff ff 48 ff ff ff ff ff ff 00 ff ff ff ff ff ff ff ff ff ff ff 45 ff 00 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 00 ff ff ff ff 45 ff ff ff ff ff 00 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 00 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 00 ff ff ff ff ff ff ff ff 00 ff ff ff ff ff ff ff ff ff ff ff ff ff 00 ff ff ff ff 00 ff ff ff ff 46 ff ff ff ff ff ff 46 ff ff ff ff 48 ff 00 ff ff ff ff 00 ff ff ff ff ff ff ff ff ff ff ff ff ff ff 00 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 00 00 ff ff ff ff ff ff ff ff ff ff 00 ff 45 ff ff ff ff ff ff 00 ff ff ff ff ff 00 ff ff 46 ff 45 00 ff ff ff ff ff ff ff ff ff ff ff ff ff ff 00 00 ff ff ff ff 00 ff ff ff 48 ff 53 ff ff ff ff 00 ff ff ff ff ff ff ff 00 ff ff ff ff 48 00 ff ff ff ff ff 48 ff ff ff ff ff ff ff ff ff 45 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 53 ff ff ff 45 ff ff ff ff ff ff ff ff ff ff ff ff ff ff 00 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 48 ff ff ff ff ff ff ff ff ff ff ff ff ff ff 00 ff ff ff ff ff ff ff ff ff ac ff ff ff ff ff ff ff ff ff 00 ff ff ff ff ff ff ff ff ff ff 00 ff ff ff 00 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 00 ff ff 00 ff ff ff ff ff ff ff ff ff 48 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 00 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 00 ff 00 ff ff 48 ff 48 ff ff ff 00 ff ff ff ff ff ff ff ff 00 ff ff ff ff ff ff ff ff ff ff 46 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ac ff 48 00 ff ff 00 ff 00 00 ff ff ff ff ff ff ff ff ff ff ff ff 45 ff ff ff ff ff ff 00 ff ff 00 48 ff ff 00 ff ff ff ff ff ff 00 ff ff 45 ff ff 00 ff ff ff ff ff ff ff ff 00 45 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 00 ff ff ff ff ff 00 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 00 48 ff 00 ff ff ff ff ff ff ff ff ff ff ff 00 ff ff ff ff 48 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 00 ff ff ff ff ff ff 46 00 00 ff ff ff ff ff ff ff ff 00 ff ff ff ff 00 ff ff ff ff ff ff ff ff 00 ff ff ff ff ff ff 00 ff ff ff ff ff ff ff ff ff ff 00 ff ff ff 00 ff ff ff ff ff ff ff 00 ff ff ff ff ff ff ff ff ff ff ff 48 48 ac ff ff ff ff ff ff 00 48 ff ff ff ff ff ff ff ff
*/
