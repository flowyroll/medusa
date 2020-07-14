.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x7c0a, %rsi
lea addresses_WC_ht+0x1b20a, %rdi
nop
cmp $57955, %rbx
mov $69, %rcx
rep movsw
nop
nop
nop
and $20589, %r9
lea addresses_UC_ht+0x12cca, %rsi
lea addresses_WT_ht+0x1618a, %rdi
nop
nop
nop
nop
add %r15, %r15
mov $20, %rcx
rep movsq
nop
nop
cmp $13151, %r15
lea addresses_normal_ht+0xbf8a, %rcx
nop
nop
nop
and $36622, %rdx
movb (%rcx), %r9b
xor %rbx, %rbx
lea addresses_WC_ht+0xadaa, %r15
nop
nop
nop
nop
nop
xor %rcx, %rcx
movl $0x61626364, (%r15)
nop
nop
nop
xor %rbx, %rbx
lea addresses_D_ht+0xae96, %rcx
nop
nop
nop
nop
xor %rdx, %rdx
mov (%rcx), %rbx
nop
nop
nop
nop
sub $10719, %rdi
lea addresses_UC_ht+0x1cca6, %rsi
lea addresses_normal_ht+0x73ca, %rdi
nop
nop
nop
nop
cmp %r10, %r10
mov $91, %rcx
rep movsw
nop
nop
and %rbx, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r9
push %rax
push %rbx
push %rcx
push %rdx

// Store
mov $0xcaa, %rax
clflush (%rax)
nop
nop
and $12289, %r9
movw $0x5152, (%rax)
nop
nop
nop
nop
inc %r11

// Store
lea addresses_D+0xffca, %rbx
nop
nop
sub $23911, %rax
mov $0x5152535455565758, %r15
movq %r15, (%rbx)
nop
sub %r9, %r9

// Store
lea addresses_A+0x65a, %rbx
nop
nop
add %rcx, %rcx
mov $0x5152535455565758, %r11
movq %r11, (%rbx)
nop
nop
nop
nop
nop
cmp %r9, %r9

// Store
lea addresses_D+0x197ca, %r9
nop
nop
nop
and %rdx, %rdx
mov $0x5152535455565758, %r15
movq %r15, %xmm1
vmovups %ymm1, (%r9)
nop
nop
and $60214, %rcx

// Store
lea addresses_A+0x722a, %r11
nop
nop
xor %rcx, %rcx
movw $0x5152, (%r11)
nop
xor $12203, %rcx

// Load
lea addresses_PSE+0x17e4a, %r9
nop
nop
nop
nop
nop
sub %r15, %r15
mov (%r9), %r11w
nop
nop
sub $50180, %rbx

// Faulty Load
lea addresses_D+0xffca, %rax
nop
nop
sub %r15, %r15
mov (%rax), %r11d
lea oracles, %rdx
and $0xff, %r11
shlq $12, %r11
mov (%rdx,%r11,1), %r11
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'58': 24}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
