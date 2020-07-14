.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r9
push %rbp
push %rdx
lea addresses_WT_ht+0x103d8, %rdx
nop
nop
nop
nop
cmp $30882, %rbp
mov (%rdx), %r11w
nop
cmp $35502, %r9
lea addresses_WC_ht+0x1c484, %rdx
clflush (%rdx)
nop
nop
nop
nop
nop
dec %r12
mov $0x6162636465666768, %r9
movq %r9, (%rdx)
nop
nop
nop
nop
nop
dec %rdx
pop %rdx
pop %rbp
pop %r9
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_D+0x1bb24, %r9
nop
cmp $57553, %r8
movups (%r9), %xmm4
vpextrq $1, %xmm4, %rdx
nop
nop
nop
nop
nop
cmp %rdx, %rdx

// Store
lea addresses_PSE+0x7c04, %rdx
cmp %rax, %rax
movl $0x51525354, (%rdx)
sub $31611, %r15

// REPMOV
mov $0x44, %rsi
lea addresses_normal+0x295c, %rdi
nop
and $57729, %rdx
mov $109, %rcx
rep movsb
nop
nop
nop
sub $38197, %rsi

// Store
mov $0x804, %rax
cmp $18149, %r15
movw $0x5152, (%rax)
nop
xor %rdx, %rdx

// Store
lea addresses_PSE+0x7c04, %r15
clflush (%r15)
nop
nop
xor $16861, %rdi
mov $0x5152535455565758, %r9
movq %r9, (%r15)
nop
dec %rdi

// Faulty Load
lea addresses_PSE+0x7c04, %r15
clflush (%r15)
nop
nop
nop
add %r8, %r8
mov (%r15), %eax
lea oracles, %rcx
and $0xff, %rax
shlq $12, %rax
mov (%rcx,%rax,1), %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_P', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': True, 'NT': True, 'congruent': 5, 'same': False}}
{'58': 55}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
