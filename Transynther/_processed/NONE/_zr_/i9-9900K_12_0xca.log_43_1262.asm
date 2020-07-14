.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x5e9f, %rdx
nop
nop
nop
nop
nop
inc %rsi
mov $0x6162636465666768, %r15
movq %r15, %xmm5
and $0xffffffffffffffc0, %rdx
movntdq %xmm5, (%rdx)
nop
nop
nop
xor %r15, %r15
lea addresses_WC_ht+0x49a3, %r8
nop
and $23528, %rcx
mov $0x6162636465666768, %r13
movq %r13, %xmm2
movups %xmm2, (%r8)
nop
xor $25915, %rcx
lea addresses_WC_ht+0x19da3, %rsi
lea addresses_WT_ht+0x7fd3, %rdi
clflush (%rsi)
dec %rax
mov $62, %rcx
rep movsb
nop
nop
and $28469, %rdi
lea addresses_A_ht+0x89a3, %r15
dec %rdx
mov $0x6162636465666768, %rcx
movq %rcx, (%r15)
nop
nop
sub %r8, %r8
lea addresses_WT_ht+0xeb33, %r15
inc %r13
movups (%r15), %xmm4
vpextrq $0, %xmm4, %rdi
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_D_ht+0x13664, %rdx
nop
nop
nop
nop
nop
add $38202, %rdi
movl $0x61626364, (%rdx)
xor %rsi, %rsi
lea addresses_D_ht+0x1309, %rsi
and %rdi, %rdi
mov $0x6162636465666768, %rdx
movq %rdx, (%rsi)
nop
nop
nop
nop
nop
cmp $25617, %r13
lea addresses_UC_ht+0xe123, %rsi
nop
nop
nop
nop
cmp $29849, %r15
mov (%rsi), %r13w
nop
nop
nop
cmp $47413, %r13
lea addresses_WC_ht+0x81a3, %rsi
lea addresses_normal_ht+0x115a3, %rdi
nop
add $45447, %r13
mov $67, %rcx
rep movsb
nop
and $41554, %r13
lea addresses_WT_ht+0x18617, %rdx
nop
nop
sub %rsi, %rsi
mov (%rdx), %r15
nop
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0xf663, %rax
nop
nop
nop
nop
nop
add $60995, %rsi
movb (%rax), %r13b
nop
nop
nop
nop
sub %r13, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r8
push %r9
push %rbx
push %rdx
push %rsi

// Store
lea addresses_US+0x1216b, %r8
nop
nop
nop
cmp %r9, %r9
movl $0x51525354, (%r8)
nop
cmp $63218, %r8

// Load
lea addresses_D+0x9fa3, %rsi
nop
nop
nop
cmp $10074, %r14
movaps (%rsi), %xmm0
vpextrq $1, %xmm0, %r11
nop
nop
add $29635, %rsi

// Store
lea addresses_UC+0xb5a3, %r9
nop
nop
nop
nop
cmp %r11, %r11
movw $0x5152, (%r9)
nop
nop
nop
nop
sub $24964, %rsi

// Store
lea addresses_UC+0xb5a3, %r11
nop
nop
nop
nop
inc %rdx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm5
vmovups %ymm5, (%r11)
nop
xor $5747, %rdx

// Store
lea addresses_normal+0x18da3, %r8
nop
nop
add %r11, %r11
mov $0x5152535455565758, %rdx
movq %rdx, %xmm1
vmovups %ymm1, (%r8)
nop
cmp %rbx, %rbx

// Faulty Load
lea addresses_UC+0xb5a3, %r11
nop
nop
nop
inc %r14
movups (%r11), %xmm4
vpextrq $1, %xmm4, %rbx
lea oracles, %r8
and $0xff, %rbx
shlq $12, %rbx
mov (%r8,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rbx
pop %r9
pop %r8
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': True, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_UC', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_UC', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_UC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 16, 'NT': True, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_D_ht', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WT_ht', 'same': True, 'AVXalign': False, 'congruent': 5}}
{'00': 43}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
