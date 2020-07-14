.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r15
push %r9
push %rbx
push %rsi
lea addresses_normal_ht+0x10793, %r11
nop
nop
nop
nop
sub $49894, %r13
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
vmovups %ymm1, (%r11)
nop
nop
nop
cmp $50395, %rsi
lea addresses_UC_ht+0xb7c7, %r13
and %r12, %r12
mov (%r13), %r11w
nop
nop
and %r15, %r15
lea addresses_WT_ht+0x7653, %rbx
xor %r9, %r9
mov $0x6162636465666768, %r13
movq %r13, (%rbx)
nop
nop
cmp $10522, %r11
lea addresses_normal_ht+0xa53, %r15
nop
nop
nop
nop
nop
mfence
movl $0x61626364, (%r15)
nop
nop
sub %r9, %r9
lea addresses_UC_ht+0x13e53, %r12
nop
nop
sub $58154, %r9
movl $0x61626364, (%r12)
nop
nop
nop
nop
nop
cmp $12667, %r15
lea addresses_D_ht+0x1825b, %r11
nop
add $5947, %rsi
mov $0x6162636465666768, %r9
movq %r9, %xmm4
and $0xffffffffffffffc0, %r11
vmovntdq %ymm4, (%r11)
nop
and $38559, %r9
lea addresses_A_ht+0x1ddb7, %rbx
nop
nop
nop
cmp %r15, %r15
mov $0x6162636465666768, %r9
movq %r9, %xmm6
vmovups %ymm6, (%rbx)
nop
nop
nop
cmp $43687, %rsi
lea addresses_A_ht+0xbad3, %r13
nop
add %r12, %r12
movl $0x61626364, (%r13)
nop
nop
nop
nop
nop
sub $9985, %r15
lea addresses_A_ht+0x19f13, %rsi
nop
nop
cmp %rbx, %rbx
mov $0x6162636465666768, %r13
movq %r13, (%rsi)
nop
nop
nop
nop
nop
dec %r12
lea addresses_UC_ht+0x75d3, %r13
nop
nop
nop
nop
nop
inc %r15
mov $0x6162636465666768, %r12
movq %r12, (%r13)
nop
nop
nop
nop
and %r9, %r9
lea addresses_normal_ht+0x17a53, %rsi
nop
nop
nop
nop
xor %r15, %r15
movw $0x6162, (%rsi)
nop
nop
and %r9, %r9
lea addresses_UC_ht+0x13901, %rbx
nop
mfence
movw $0x6162, (%rbx)
nop
inc %r12
lea addresses_D_ht+0xb313, %r9
add %r13, %r13
mov $0x6162636465666768, %r15
movq %r15, %xmm5
movups %xmm5, (%r9)
nop
nop
nop
nop
nop
cmp %rbx, %rbx
pop %rsi
pop %rbx
pop %r9
pop %r15
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r8
push %r9
push %rax
push %rcx
push %rsi

// Store
lea addresses_UC+0x8547, %rcx
nop
nop
nop
nop
nop
dec %r11
movb $0x51, (%rcx)
nop
nop
nop
add %r12, %r12

// Store
lea addresses_PSE+0x1704f, %r9
xor $64197, %r8
movl $0x51525354, (%r9)
nop
xor $12318, %rcx

// Store
mov $0x2d22e4000000009f, %r12
nop
add %rsi, %rsi
movl $0x51525354, (%r12)
nop
nop
nop
inc %r12

// Faulty Load
lea addresses_D+0xfe53, %rax
clflush (%rax)
add $48505, %rsi
mov (%rax), %r12w
lea oracles, %rax
and $0xff, %r12
shlq $12, %r12
mov (%rax,%r12,1), %r12
pop %rsi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'36': 153}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
