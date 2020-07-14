.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1c85c, %rsi
lea addresses_A_ht+0x1509c, %rdi
nop
nop
mfence
mov $12, %rcx
rep movsb
sub $21920, %r9
lea addresses_normal_ht+0x1d85c, %rsi
nop
nop
and %r13, %r13
vmovups (%rsi), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r9
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WC_ht+0x1b05c, %rdi
nop
nop
nop
nop
nop
xor %r11, %r11
vmovups (%rdi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rsi
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_WC_ht+0x15c5c, %r13
nop
nop
cmp $25993, %rsi
vmovups (%r13), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r12
cmp %rcx, %rcx
lea addresses_normal_ht+0x92fc, %rcx
clflush (%rcx)
sub %rsi, %rsi
movw $0x6162, (%rcx)
nop
xor %rsi, %rsi
lea addresses_A_ht+0xb734, %rsi
lea addresses_A_ht+0x1605c, %rdi
nop
inc %r11
mov $59, %rcx
rep movsw
dec %r11
lea addresses_UC_ht+0x93a4, %r13
nop
add $63565, %r9
movl $0x61626364, (%r13)
nop
nop
nop
nop
nop
and $11866, %r9
lea addresses_WT_ht+0x17024, %rdi
clflush (%rdi)
and $10995, %rsi
movb (%rdi), %r9b
nop
nop
cmp $41641, %rsi
lea addresses_WT_ht+0xb85c, %rsi
lea addresses_D_ht+0x18c9c, %rdi
sub $13716, %r13
mov $28, %rcx
rep movsw
nop
nop
nop
sub $42380, %r12
lea addresses_A_ht+0x1865c, %r13
nop
and $60189, %r12
mov (%r13), %r11d
xor $39552, %r9
lea addresses_UC_ht+0x16f4c, %rsi
nop
nop
sub $17862, %r11
mov $0x6162636465666768, %r13
movq %r13, %xmm1
vmovups %ymm1, (%rsi)
nop
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0x71d6, %rcx
nop
nop
nop
nop
nop
and $64725, %rsi
movw $0x6162, (%rcx)
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_normal_ht+0x1cf46, %r12
nop
nop
nop
nop
sub %r9, %r9
mov $0x6162636465666768, %r11
movq %r11, %xmm0
movups %xmm0, (%r12)
dec %r9
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r9
push %rax
push %rdi

// Load
mov $0x29d9130000000c5c, %r14
nop
nop
cmp $570, %r11
vmovups (%r14), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rdi
nop
nop
nop
nop
sub $26884, %r14

// Store
mov $0x55c, %r9
inc %r13
mov $0x5152535455565758, %rax
movq %rax, %xmm2
movups %xmm2, (%r9)
cmp %r12, %r12

// Store
lea addresses_UC+0xc05c, %rax
nop
nop
cmp $36064, %r13
movb $0x51, (%rax)
nop
nop
nop
nop
dec %r12

// Faulty Load
lea addresses_UC+0x1605c, %rdi
nop
nop
nop
nop
dec %r13
vmovntdqa (%rdi), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r11
lea oracles, %rdi
and $0xff, %r11
shlq $12, %r11
mov (%rdi,%r11,1), %r11
pop %rdi
pop %rax
pop %r9
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'00': 88}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
