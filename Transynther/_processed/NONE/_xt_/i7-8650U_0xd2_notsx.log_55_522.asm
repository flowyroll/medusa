.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %rdx
lea addresses_A_ht+0x585f, %r11
nop
nop
nop
nop
and %r14, %r14
mov $0x6162636465666768, %rdx
movq %rdx, (%r11)
nop
nop
cmp $37107, %r10
pop %rdx
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %r9
push %rdi
push %rdx
push %rsi

// Load
lea addresses_A+0x655f, %r8
nop
nop
nop
sub $40212, %r9
mov (%r8), %rsi
nop
nop
add $29368, %r9

// Faulty Load
lea addresses_A+0x655f, %r8
cmp %r14, %r14
movups (%r8), %xmm6
vpextrq $0, %xmm6, %rdi
lea oracles, %rsi
and $0xff, %rdi
shlq $12, %rdi
mov (%rsi,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %r9
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'35': 55}
35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35
*/
