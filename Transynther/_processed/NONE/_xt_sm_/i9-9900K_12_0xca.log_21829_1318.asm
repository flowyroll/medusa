.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x11afd, %rsi
lea addresses_D_ht+0xe5fd, %rdi
sub $53239, %r8
mov $99, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $39765, %r9
lea addresses_WT_ht+0x7ffd, %rsi
lea addresses_normal_ht+0x1aa6d, %rdi
nop
nop
sub $54434, %r13
mov $90, %rcx
rep movsw
nop
nop
nop
nop
and %r8, %r8
lea addresses_WT_ht+0x747d, %rsi
lea addresses_WC_ht+0x14d3d, %rdi
nop
nop
nop
nop
xor $48601, %r14
mov $19, %rcx
rep movsb
nop
add %r9, %r9
lea addresses_UC_ht+0x10d3d, %rsi
lea addresses_normal_ht+0x1b4fd, %rdi
nop
add %rdx, %rdx
mov $42, %rcx
rep movsl
cmp %r13, %r13
lea addresses_WC_ht+0x1bd3d, %rdx
clflush (%rdx)
xor $21644, %rdi
movb (%rdx), %cl
inc %r9
lea addresses_WT_ht+0x85dd, %r13
nop
nop
nop
nop
nop
cmp %rcx, %rcx
mov (%r13), %edx
nop
nop
cmp %r14, %r14
lea addresses_A_ht+0x1bbd, %r14
clflush (%r14)
nop
nop
xor $48165, %rcx
mov (%r14), %di
nop
add %rcx, %rcx
lea addresses_normal_ht+0x18cfd, %rdx
nop
nop
nop
and $21919, %rdi
mov $0x6162636465666768, %r9
movq %r9, %xmm6
movups %xmm6, (%rdx)
nop
nop
dec %r8
lea addresses_UC_ht+0x42d5, %r13
nop
nop
nop
nop
nop
sub %rdi, %rdi
mov (%r13), %r9w
nop
nop
nop
nop
nop
cmp $139, %r14
lea addresses_normal_ht+0x6e7d, %rdi
nop
and $44964, %r8
mov (%rdi), %r14
nop
nop
nop
add %rdi, %rdi
lea addresses_D_ht+0xc6fd, %r9
nop
nop
nop
nop
add %rsi, %rsi
mov (%r9), %r13w
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_D_ht+0x13333, %rdx
clflush (%rdx)
xor $11668, %rdi
movw $0x6162, (%rdx)
nop
add %r8, %r8
lea addresses_D_ht+0xeffd, %rcx
nop
sub %r13, %r13
movl $0x61626364, (%rcx)
nop
nop
nop
sub $32215, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r15
push %rax
push %rdi

// Load
lea addresses_D+0xbcdd, %r12
clflush (%r12)
nop
nop
nop
nop
nop
and %r13, %r13
movups (%r12), %xmm3
vpextrq $0, %xmm3, %r14
nop
nop
nop
nop
nop
sub %r11, %r11

// Store
lea addresses_UC+0x1d9fd, %rax
nop
and %r15, %r15
mov $0x5152535455565758, %r13
movq %r13, %xmm6
vmovups %ymm6, (%rax)
nop
nop
nop
nop
cmp $43720, %rax

// Store
lea addresses_UC+0x6af9, %rax
nop
nop
nop
nop
add %rdi, %rdi
movl $0x51525354, (%rax)
nop
nop
inc %r13

// Store
mov $0x71876f0000000cfd, %rdi
nop
nop
xor %rax, %rax
mov $0x5152535455565758, %r14
movq %r14, (%rdi)
nop
nop
nop
nop
nop
cmp $5190, %r11

// Store
lea addresses_WC+0x153ad, %r12
nop
xor $20825, %rax
movb $0x51, (%r12)
cmp $57243, %r12

// Store
lea addresses_D+0x1a8fd, %r12
and %rdi, %rdi
mov $0x5152535455565758, %r13
movq %r13, %xmm2
movups %xmm2, (%r12)
xor $42638, %r15

// Load
lea addresses_RW+0x101ad, %rdi
nop
cmp $23443, %r13
movups (%rdi), %xmm6
vpextrq $1, %xmm6, %r14
nop
dec %rax

// Faulty Load
lea addresses_D+0x1a8fd, %r13
nop
cmp %r15, %r15
mov (%r13), %r11d
lea oracles, %rdi
and $0xff, %r11
shlq $12, %r11
mov (%rdi,%r11,1), %r11
pop %rdi
pop %rax
pop %r15
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_D', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 4}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_D', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': True, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
