.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %rbp
push %rcx
push %rsi
lea addresses_D_ht+0xbc89, %r11
cmp $5469, %rcx
mov (%r11), %ebp
nop
nop
nop
sub $58672, %rsi
pop %rsi
pop %rcx
pop %rbp
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r9
push %rax
push %rbp
push %rcx
push %rdx
push %rsi

// Store
mov $0x7529490000000640, %rcx
add %rsi, %rsi
mov $0x5152535455565758, %r9
movq %r9, (%rcx)
nop
nop
nop
nop
nop
sub %rsi, %rsi

// Store
lea addresses_PSE+0x93d, %rbp
and $20163, %rax
mov $0x5152535455565758, %r9
movq %r9, (%rbp)
nop
nop
nop
add $56245, %rcx

// Store
lea addresses_D+0xc6b9, %rbp
nop
nop
nop
nop
inc %rdx
mov $0x5152535455565758, %rcx
movq %rcx, (%rbp)
cmp %rsi, %rsi

// Store
lea addresses_WC+0x1e439, %rax
nop
nop
and %rdx, %rdx
movb $0x51, (%rax)
and $16375, %rax

// Store
lea addresses_PSE+0xda39, %r9
nop
inc %rbp
movw $0x5152, (%r9)
nop
nop
nop
nop
nop
cmp $57231, %rdx

// Faulty Load
lea addresses_PSE+0xc0b9, %r15
nop
nop
nop
xor %r9, %r9
movb (%r15), %dl
lea oracles, %rsi
and $0xff, %rdx
shlq $12, %rdx
mov (%rsi,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4}}
{'33': 8}
33 33 33 33 33 33 33 33
*/
