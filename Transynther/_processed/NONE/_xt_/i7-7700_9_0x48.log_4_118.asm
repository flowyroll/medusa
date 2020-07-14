.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r9
push %rbp
push %rcx
push %rdx
lea addresses_WC_ht+0xad01, %r13
clflush (%r13)
nop
cmp $56218, %r10
mov $0x6162636465666768, %rcx
movq %rcx, (%r13)
nop
nop
cmp $21297, %r9
lea addresses_WT_ht+0x8fb1, %rcx
nop
nop
nop
nop
nop
add $983, %rdx
movw $0x6162, (%rcx)
nop
nop
nop
xor $26018, %r13
lea addresses_WC_ht+0xbc1, %r10
nop
and %r12, %r12
movl $0x61626364, (%r10)
nop
nop
nop
dec %rbp
lea addresses_WT_ht+0x29c1, %r12
nop
cmp %r10, %r10
movb $0x61, (%r12)
nop
add %r10, %r10
lea addresses_UC_ht+0x159c1, %r10
nop
nop
nop
nop
cmp %r13, %r13
mov (%r10), %dx
nop
nop
nop
nop
nop
add $38616, %rbp
lea addresses_WC_ht+0x6141, %r13
xor $20212, %rbp
movb $0x61, (%r13)
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WT_ht+0x13c1, %r10
nop
nop
nop
nop
nop
inc %r12
mov $0x6162636465666768, %r9
movq %r9, %xmm6
movups %xmm6, (%r10)
nop
nop
nop
nop
nop
dec %rcx
pop %rdx
pop %rcx
pop %rbp
pop %r9
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Load
lea addresses_UC+0x3841, %rbx
clflush (%rbx)
sub %r11, %r11
movb (%rbx), %al
nop
nop
nop
sub %rax, %rax

// Store
mov $0xeed, %rax
clflush (%rax)
nop
add $24006, %r13
mov $0x5152535455565758, %rsi
movq %rsi, (%rax)
add %r13, %r13

// Load
lea addresses_D+0x1abe9, %rax
nop
nop
nop
nop
add $41633, %rcx
mov (%rax), %r13w
nop
sub %r11, %r11

// Store
lea addresses_D+0x1f141, %rbx
nop
nop
nop
nop
nop
add $60902, %rax
mov $0x5152535455565758, %r11
movq %r11, %xmm3
vmovups %ymm3, (%rbx)
nop
nop
nop
nop
nop
inc %r11

// Faulty Load
lea addresses_normal+0xf9c1, %rax
nop
nop
nop
nop
nop
and $5646, %r13
movups (%rax), %xmm3
vpextrq $1, %xmm3, %rsi
lea oracles, %rdi
and $0xff, %rsi
shlq $12, %rsi
mov (%rdi,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': True, 'congruent': 4, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 3, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 7, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 4, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 9, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 6, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': False}}
{'34': 4}
34 34 34 34
*/
