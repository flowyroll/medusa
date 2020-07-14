.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x339e, %rdx
nop
nop
nop
nop
cmp $2099, %rbx
movw $0x6162, (%rdx)
nop
nop
cmp $43794, %rsi
lea addresses_A_ht+0x139e, %r12
clflush (%r12)
nop
nop
nop
sub %rcx, %rcx
mov $0x6162636465666768, %r15
movq %r15, %xmm4
and $0xffffffffffffffc0, %r12
movntdq %xmm4, (%r12)
nop
nop
and %rcx, %rcx
lea addresses_normal_ht+0x13fbe, %rsi
lea addresses_WT_ht+0x1086, %rdi
xor $38724, %rdx
mov $101, %rcx
rep movsl
nop
nop
nop
cmp %r8, %r8
lea addresses_WC_ht+0x371e, %r12
cmp %rdx, %rdx
movl $0x61626364, (%r12)
nop
nop
nop
nop
nop
and $23633, %r12
lea addresses_normal_ht+0x4bae, %rdx
nop
nop
nop
nop
and $12986, %rdi
movb (%rdx), %r8b
nop
nop
nop
nop
nop
and %r8, %r8
lea addresses_UC_ht+0xc52c, %r15
nop
nop
nop
and %r8, %r8
movups (%r15), %xmm0
vpextrq $0, %xmm0, %rsi
nop
nop
nop
nop
cmp $3866, %r15
lea addresses_D_ht+0x319e, %rsi
lea addresses_normal_ht+0x1322, %rdi
add $46761, %r8
mov $66, %rcx
rep movsw
xor %rbx, %rbx
lea addresses_WC_ht+0x1ce9e, %rbx
nop
and $25450, %rdi
mov (%rbx), %r8w
nop
dec %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_D+0x1f99e, %rsi
mov $0x79e, %rdi
nop
nop
nop
sub %r10, %r10
mov $25, %rcx
rep movsw
and %r10, %r10

// Store
lea addresses_US+0x6f9e, %r10
nop
inc %r11
mov $0x5152535455565758, %rdi
movq %rdi, %xmm1
movups %xmm1, (%r10)
nop
nop
nop
nop
sub $60521, %r11

// Store
lea addresses_US+0xa78e, %rbp
nop
add %r10, %r10
mov $0x5152535455565758, %rdi
movq %rdi, %xmm4
movups %xmm4, (%rbp)
nop
sub %rsi, %rsi

// Store
lea addresses_UC+0x1611e, %r12
nop
nop
nop
nop
inc %rsi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
movups %xmm5, (%r12)
nop
nop
and %rsi, %rsi

// Store
lea addresses_UC+0x14114, %r11
nop
nop
nop
add %r12, %r12
mov $0x5152535455565758, %r10
movq %r10, %xmm4
movups %xmm4, (%r11)
cmp $57641, %rsi

// Store
mov $0x4a6f190000000c3e, %r12
clflush (%r12)
nop
add %r11, %r11
movl $0x51525354, (%r12)
dec %r10

// Faulty Load
lea addresses_UC+0x579e, %r12
cmp %rcx, %rcx
mov (%r12), %rsi
lea oracles, %rcx
and $0xff, %rsi
shlq $12, %rsi
mov (%rcx,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_P', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'36': 182, '16': 1}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 16 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
