.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %rbx
push %rcx
push %rsi
lea addresses_normal_ht+0x1d0b2, %rcx
cmp $61829, %r14
movw $0x6162, (%rcx)
nop
and %r14, %r14
lea addresses_normal_ht+0xcc32, %rbx
nop
nop
nop
xor $32129, %rcx
mov (%rbx), %rsi
nop
nop
and $592, %rbx
pop %rsi
pop %rcx
pop %rbx
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r9
push %rbp
push %rcx
push %rdi

// Store
lea addresses_PSE+0xa072, %rdi
nop
nop
nop
add %r13, %r13
movl $0x51525354, (%rdi)
nop
nop
nop
nop
nop
add %rbp, %rbp

// Store
lea addresses_US+0x11e72, %r11
nop
nop
xor %rcx, %rcx
mov $0x5152535455565758, %r13
movq %r13, (%r11)
nop
nop
nop
nop
sub $4130, %rbp

// Load
mov $0x14f8760000000d72, %r9
nop
cmp %r15, %r15
movb (%r9), %cl
nop
nop
nop
nop
nop
xor $15633, %r9

// Faulty Load
mov $0x6ff0e80000000172, %rbp
nop
nop
nop
nop
nop
and %rdi, %rdi
vmovups (%rbp), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rcx
lea oracles, %rdi
and $0xff, %rcx
shlq $12, %rcx
mov (%rdi,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': True, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': True, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 10}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'00': 19}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
