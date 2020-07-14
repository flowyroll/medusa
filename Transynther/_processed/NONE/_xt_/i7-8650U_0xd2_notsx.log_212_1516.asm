.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0xdda7, %rsi
lea addresses_D_ht+0x17967, %rdi
nop
nop
nop
xor $32838, %r14
mov $70, %rcx
rep movsl
nop
nop
nop
inc %r13
lea addresses_D_ht+0x17117, %rbp
nop
cmp $25118, %rdi
vmovups (%rbp), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r13
nop
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_WT_ht+0x178d7, %r14
nop
and %rdx, %rdx
movw $0x6162, (%r14)
nop
nop
nop
cmp $64950, %rdi
lea addresses_D_ht+0xde67, %rsi
lea addresses_D_ht+0x16097, %rdi
nop
nop
nop
nop
sub $3861, %rbx
mov $97, %rcx
rep movsb
and %rbx, %rbx
lea addresses_WC_ht+0xe467, %rbx
nop
nop
nop
cmp %rsi, %rsi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm4
movups %xmm4, (%rbx)
nop
nop
nop
and %rbp, %rbp
lea addresses_D_ht+0x1c467, %rsi
lea addresses_normal_ht+0x10c67, %rdi
clflush (%rsi)
nop
nop
nop
xor %rdx, %rdx
mov $53, %rcx
rep movsw
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_normal_ht+0x2067, %rbp
nop
nop
nop
nop
cmp %r13, %r13
movb (%rbp), %dl
nop
nop
nop
nop
dec %rdx
lea addresses_WC_ht+0x13067, %rsi
nop
nop
nop
nop
dec %rdx
mov $0x6162636465666768, %r14
movq %r14, %xmm6
movups %xmm6, (%rsi)
nop
nop
nop
cmp $17764, %rdi
lea addresses_WC_ht+0x6c67, %rbp
nop
nop
nop
and $13379, %r14
mov (%rbp), %ebx
nop
nop
nop
cmp $50008, %rbx
lea addresses_normal_ht+0x3307, %rsi
lea addresses_UC_ht+0xdae7, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
xor $43169, %r13
mov $24, %rcx
rep movsw
nop
cmp $47394, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %rax
push %rbx
push %rcx
push %rdi
push %rdx

// Load
lea addresses_UC+0x10b13, %r11
nop
nop
nop
dec %rdx
vmovups (%r11), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r13
sub $18543, %rbx

// Load
lea addresses_WT+0x17fc7, %rdx
and $43463, %rax
mov (%rdx), %r13d
nop
inc %r13

// Store
lea addresses_PSE+0x52e7, %r13
nop
and %rdx, %rdx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm2
vmovups %ymm2, (%r13)
nop
nop
nop
nop
xor $25565, %rdi

// Load
lea addresses_normal+0x1f4bb, %r13
nop
nop
nop
nop
nop
xor %rdx, %rdx
movups (%r13), %xmm4
vpextrq $1, %xmm4, %rax
nop
nop
add %r13, %r13

// Load
lea addresses_D+0x5357, %r13
xor $33806, %rbx
movb (%r13), %r11b
nop
nop
nop
xor %rbx, %rbx

// Store
lea addresses_A+0xdf7f, %rbx
nop
nop
nop
nop
nop
xor $9628, %r11
movw $0x5152, (%rbx)
nop
nop
nop
nop
nop
add $8372, %rdi

// Faulty Load
lea addresses_UC+0x1f867, %rax
nop
nop
nop
xor $8887, %r11
mov (%rax), %edx
lea oracles, %rdi
and $0xff, %rdx
shlq $12, %rdx
mov (%rdi,%rdx,1), %rdx
pop %rdx
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
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'37': 212}
37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37
*/
