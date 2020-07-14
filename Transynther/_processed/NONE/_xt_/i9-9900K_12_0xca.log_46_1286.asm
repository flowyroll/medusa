.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x19b5d, %rsi
lea addresses_UC_ht+0x1278d, %rdi
clflush (%rsi)
nop
nop
nop
nop
cmp %rdx, %rdx
mov $30, %rcx
rep movsw
nop
nop
inc %r11
lea addresses_D_ht+0x7f23, %r14
add %rsi, %rsi
movb (%r14), %cl
nop
nop
xor %rcx, %rcx
lea addresses_UC_ht+0x12e8d, %rdx
nop
nop
nop
nop
dec %r15
movb $0x61, (%rdx)
nop
nop
nop
nop
dec %r15
lea addresses_WT_ht+0x618d, %r14
nop
nop
nop
sub $37695, %rdx
movl $0x61626364, (%r14)
nop
nop
nop
nop
and $44476, %r11
lea addresses_normal_ht+0x1d2ad, %rsi
lea addresses_normal_ht+0x1488d, %rdi
nop
nop
cmp %r15, %r15
mov $9, %rcx
rep movsb
nop
sub $52626, %rsi
lea addresses_UC_ht+0x14b0d, %r14
nop
nop
nop
and %rdi, %rdi
mov $0x6162636465666768, %r11
movq %r11, (%r14)
nop
nop
and $39965, %rsi
lea addresses_WT_ht+0x98d, %r11
and $22460, %rsi
movl $0x61626364, (%r11)
nop
nop
dec %r15
lea addresses_normal_ht+0x1c5ee, %rsi
nop
nop
xor $36005, %r15
movw $0x6162, (%rsi)
nop
nop
xor %r15, %r15
lea addresses_WT_ht+0xf14d, %rsi
lea addresses_WC_ht+0x8197, %rdi
nop
nop
cmp $28680, %rbp
mov $120, %rcx
rep movsl
nop
nop
nop
and $44730, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r8
push %r9
push %rdi
push %rdx

// Store
lea addresses_PSE+0x428d, %rdx
nop
nop
cmp $9332, %r14
movb $0x51, (%rdx)
add %rdx, %rdx

// Store
lea addresses_WT+0x19847, %rdx
nop
nop
sub $37115, %r9
mov $0x5152535455565758, %r8
movq %r8, (%rdx)
nop
cmp %r14, %r14

// Store
lea addresses_WC+0x1c88d, %rdx
nop
nop
xor %r11, %r11
mov $0x5152535455565758, %r9
movq %r9, %xmm6
vmovaps %ymm6, (%rdx)
nop
nop
nop
nop
cmp %rdi, %rdi

// Store
lea addresses_WC+0x17cd, %r8
nop
nop
nop
nop
and $22529, %rdi
mov $0x5152535455565758, %r12
movq %r12, %xmm0
movups %xmm0, (%r8)
nop
nop
nop
and $32771, %r9

// Faulty Load
lea addresses_RW+0xfe8d, %rdi
nop
xor $30727, %rdx
mov (%rdi), %r12w
lea oracles, %r14
and $0xff, %r12
shlq $12, %r12
mov (%r14,%r12,1), %r12
pop %rdx
pop %rdi
pop %r9
pop %r8
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': True, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_RW', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 1}}
{'32': 46}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
