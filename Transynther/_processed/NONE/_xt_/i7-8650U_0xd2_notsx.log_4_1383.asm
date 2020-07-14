.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1ab3b, %rsi
lea addresses_UC_ht+0x13efb, %rdi
nop
and %r11, %r11
mov $113, %rcx
rep movsl
nop
nop
nop
nop
nop
dec %r10
lea addresses_WT_ht+0xc9c3, %rcx
nop
nop
nop
nop
and $30585, %r14
movb (%rcx), %dl
nop
nop
nop
nop
nop
sub $54025, %rsi
lea addresses_WC_ht+0x187db, %rsi
lea addresses_WT_ht+0xf03b, %rdi
dec %r8
mov $26, %rcx
rep movsl
nop
nop
sub $22477, %r8
lea addresses_D_ht+0x9424, %rsi
add $24121, %r8
mov (%rsi), %r10w
nop
nop
sub $62196, %rcx
lea addresses_normal_ht+0x148da, %rsi
lea addresses_D_ht+0x84fc, %rdi
nop
nop
and $47174, %r10
mov $0, %rcx
rep movsw
nop
cmp %r11, %r11
lea addresses_A_ht+0x104ff, %rsi
nop
nop
nop
nop
nop
and %r8, %r8
movb (%rsi), %r10b
nop
nop
nop
and %rcx, %rcx
lea addresses_WC_ht+0x12bfb, %rdx
cmp %rdi, %rdi
movups (%rdx), %xmm2
vpextrq $0, %xmm2, %rsi
sub %r14, %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %r9
push %rbp
push %rsi

// Store
mov $0x33b, %r9
clflush (%r9)
nop
nop
nop
add $16597, %rbp
mov $0x5152535455565758, %r11
movq %r11, %xmm1
movups %xmm1, (%r9)
xor $30304, %r9

// Store
lea addresses_D+0x1129b, %r11
nop
nop
nop
nop
sub $42027, %r10
mov $0x5152535455565758, %rbp
movq %rbp, %xmm4
vmovups %ymm4, (%r11)
nop
nop
nop
nop
nop
dec %r11

// Store
lea addresses_WT+0x1dfb, %r10
nop
cmp %rsi, %rsi
movb $0x51, (%r10)
xor %rsi, %rsi

// Faulty Load
lea addresses_PSE+0x1b8fb, %r11
xor %r15, %r15
movups (%r11), %xmm4
vpextrq $0, %xmm4, %rsi
lea oracles, %rbp
and $0xff, %rsi
shlq $12, %rsi
mov (%rbp,%rsi,1), %rsi
pop %rsi
pop %rbp
pop %r9
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': True}}
{'33': 4}
33 33 33 33
*/
