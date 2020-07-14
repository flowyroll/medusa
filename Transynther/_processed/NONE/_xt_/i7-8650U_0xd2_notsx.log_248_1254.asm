.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x18dc0, %rbp
nop
nop
nop
nop
cmp $30365, %r11
mov (%rbp), %r9w
nop
nop
nop
nop
nop
add %r10, %r10
lea addresses_normal_ht+0xfb10, %r8
nop
nop
nop
nop
nop
and %rcx, %rcx
mov (%r8), %r11d
cmp %r10, %r10
lea addresses_WC_ht+0x2bd0, %rsi
lea addresses_UC_ht+0x19410, %rdi
clflush (%rdi)
nop
nop
nop
nop
add $23717, %r8
mov $87, %rcx
rep movsb
nop
nop
nop
nop
nop
and $28193, %r9
lea addresses_D_ht+0xf810, %r8
nop
nop
nop
nop
nop
xor $55127, %rdi
movups (%r8), %xmm1
vpextrq $0, %xmm1, %rsi
nop
nop
nop
and %r9, %r9
lea addresses_WT_ht+0x1bee0, %rsi
lea addresses_WT_ht+0x14410, %rdi
nop
nop
nop
nop
nop
add $5637, %r8
mov $47, %rcx
rep movsl
nop
nop
nop
nop
xor %r9, %r9
lea addresses_normal_ht+0x3610, %rcx
nop
cmp $53274, %r9
vmovups (%rcx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r11
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WC_ht+0x19200, %rdi
nop
nop
nop
xor %r11, %r11
movb (%rdi), %r10b
nop
nop
nop
nop
dec %r9
lea addresses_A_ht+0x3c10, %rsi
lea addresses_WT_ht+0x13180, %rdi
nop
sub %r9, %r9
mov $113, %rcx
rep movsq
nop
nop
nop
and %r8, %r8
lea addresses_WT_ht+0x76ca, %rbp
and $8946, %r9
movl $0x61626364, (%rbp)
nop
nop
sub %rsi, %rsi
lea addresses_WC_ht+0x1ba10, %r9
nop
nop
nop
nop
nop
dec %rbp
mov $0x6162636465666768, %r11
movq %r11, %xmm1
vmovups %ymm1, (%r9)
nop
nop
nop
xor $31772, %r11
lea addresses_A_ht+0xda58, %r10
nop
nop
nop
nop
nop
cmp %rsi, %rsi
vmovups (%r10), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rcx
nop
nop
nop
nop
cmp $61578, %rsi
lea addresses_WC_ht+0x16610, %r9
cmp %r11, %r11
movb $0x61, (%r9)
nop
nop
nop
add %rbp, %rbp
lea addresses_normal_ht+0x1eb90, %rsi
lea addresses_UC_ht+0x181d0, %rdi
nop
nop
nop
nop
dec %r9
mov $64, %rcx
rep movsb
nop
dec %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r8
push %rbp
push %rbx
push %rdx

// Store
mov $0x6eb, %rbp
nop
nop
nop
nop
nop
xor $14183, %r8
movw $0x5152, (%rbp)
nop
nop
nop
nop
nop
cmp %r12, %r12

// Load
lea addresses_PSE+0x1e810, %r8
nop
nop
nop
nop
and %rdx, %rdx
movups (%r8), %xmm6
vpextrq $1, %xmm6, %rbp
nop
nop
nop
nop
sub $26765, %r12

// Store
mov $0x4f371000000082d, %r15
nop
nop
nop
nop
inc %rdx
movl $0x51525354, (%r15)
nop
nop
and $52087, %rdx

// Faulty Load
lea addresses_D+0xb410, %r8
nop
nop
nop
nop
nop
dec %r11
movb (%r8), %dl
lea oracles, %rbx
and $0xff, %rdx
shlq $12, %rdx
mov (%rbx,%rdx,1), %rdx
pop %rdx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'36': 248}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
