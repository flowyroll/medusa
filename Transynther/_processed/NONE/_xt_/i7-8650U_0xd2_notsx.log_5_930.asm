.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1f1b, %r9
nop
nop
nop
nop
nop
add $36110, %r11
movw $0x6162, (%r9)
nop
nop
cmp %r12, %r12
lea addresses_D_ht+0x1d608, %rsi
lea addresses_A_ht+0x5e1b, %rdi
nop
nop
nop
and $57199, %r10
mov $113, %rcx
rep movsb
nop
dec %rcx
lea addresses_UC_ht+0x68e3, %r9
nop
xor %rdi, %rdi
movb $0x61, (%r9)
nop
nop
nop
nop
nop
sub $50257, %rsi
lea addresses_D_ht+0x17003, %rcx
nop
and $37676, %r11
mov (%rcx), %rsi
nop
nop
nop
nop
inc %rbx
lea addresses_normal_ht+0x979b, %rsi
lea addresses_WT_ht+0x27bb, %rdi
nop
cmp $44706, %r11
mov $31, %rcx
rep movsw
nop
nop
nop
nop
xor %r12, %r12
lea addresses_D_ht+0x2ddb, %r9
nop
nop
nop
nop
inc %r11
mov (%r9), %si
nop
add %rdi, %rdi
lea addresses_D_ht+0x1b79b, %r12
nop
nop
nop
nop
nop
xor %rdi, %rdi
movb (%r12), %cl
nop
nop
nop
nop
nop
inc %rdi
lea addresses_normal_ht+0xba1b, %rsi
lea addresses_WC_ht+0x9d9b, %rdi
nop
nop
nop
sub $23995, %r9
mov $30, %rcx
rep movsq
nop
nop
nop
add $58091, %r11
lea addresses_D_ht+0x76eb, %r9
cmp $59886, %rsi
movw $0x6162, (%r9)
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_normal_ht+0x11adb, %rsi
nop
cmp %rcx, %rcx
movb (%rsi), %r12b
add %rbx, %rbx
lea addresses_WT_ht+0xf22b, %rbx
nop
nop
nop
and %r12, %r12
mov $0x6162636465666768, %r10
movq %r10, %xmm1
vmovups %ymm1, (%rbx)
nop
nop
nop
nop
and $40262, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r15
push %rdi
push %rdx
push %rsi

// Store
lea addresses_UC+0xfb9b, %rsi
clflush (%rsi)
nop
nop
cmp %r10, %r10
movb $0x51, (%rsi)
inc %r10

// Store
lea addresses_PSE+0x729b, %r10
clflush (%r10)
nop
xor $50898, %rdx
mov $0x5152535455565758, %r15
movq %r15, %xmm7
vmovups %ymm7, (%r10)
nop
nop
dec %rsi

// Store
mov $0x59b, %rsi
nop
nop
nop
nop
nop
cmp $4507, %r13
mov $0x5152535455565758, %rdi
movq %rdi, %xmm7
vmovups %ymm7, (%rsi)
nop
nop
xor $61850, %r11

// Store
lea addresses_WC+0x1e1bb, %r13
clflush (%r13)
and $12132, %r15
movw $0x5152, (%r13)
nop
nop
sub $2362, %r15

// Load
lea addresses_D+0xad9b, %rsi
sub %r11, %r11
mov (%rsi), %r13d
nop
nop
nop
add %rsi, %rsi

// Store
lea addresses_RW+0x10c1b, %rdi
nop
nop
inc %r11
mov $0x5152535455565758, %r15
movq %r15, (%rdi)
nop
nop
nop
and $9239, %rdx

// Store
lea addresses_US+0xfb9b, %r11
nop
nop
nop
nop
add $49751, %r15
mov $0x5152535455565758, %r10
movq %r10, %xmm0
movups %xmm0, (%r11)
nop
nop
sub $27041, %r11

// Store
lea addresses_D+0x171c5, %r13
clflush (%r13)
nop
inc %rdi
mov $0x5152535455565758, %rsi
movq %rsi, (%r13)
xor $55885, %rdx

// Store
lea addresses_A+0x869b, %rsi
nop
cmp $43795, %rdi
movb $0x51, (%rsi)
nop
sub $4840, %r13

// Load
lea addresses_WT+0x3d9b, %rdx
and $7596, %r11
mov (%rdx), %r13
nop
nop
nop
and %rsi, %rsi

// Faulty Load
lea addresses_D+0x1ad9b, %rdi
nop
nop
xor $9654, %r13
movb (%rdi), %r11b
lea oracles, %rdx
and $0xff, %r11
shlq $12, %r11
mov (%rdx,%r11,1), %r11
pop %rsi
pop %rdx
pop %rdi
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'36': 5}
36 36 36 36 36
*/
