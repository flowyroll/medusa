.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %rdi
push %rdx
lea addresses_normal_ht+0x1efd3, %r8
clflush (%r8)
nop
nop
nop
nop
nop
cmp $64371, %rdi
movl $0x61626364, (%r8)
xor $11520, %rdx
pop %rdx
pop %rdi
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %rcx
push %rdi
push %rdx

// Load
lea addresses_PSE+0x155d3, %r15
nop
nop
add $33665, %rdi
movntdqa (%r15), %xmm2
vpextrq $1, %xmm2, %r11
nop
and $56195, %r15

// Store
lea addresses_D+0x3ed3, %rcx
clflush (%rcx)
nop
nop
xor $13183, %r15
mov $0x5152535455565758, %r8
movq %r8, (%rcx)
inc %r15

// Load
mov $0x62b, %rdi
nop
nop
nop
sub $9691, %rcx
movups (%rdi), %xmm3
vpextrq $1, %xmm3, %r8
nop
nop
dec %r8

// Store
lea addresses_D+0x126d3, %rcx
nop
xor $13179, %rdx
mov $0x5152535455565758, %rdi
movq %rdi, (%rcx)
nop
nop
nop
nop
nop
add $15080, %r8

// Faulty Load
lea addresses_D+0x126d3, %rdx
clflush (%rdx)
nop
dec %rcx
mov (%rdx), %r11d
lea oracles, %rcx
and $0xff, %r11
shlq $12, %r11
mov (%rcx,%r11,1), %r11
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_PSE', 'congruent': 7}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D', 'congruent': 11}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_P', 'congruent': 3}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D', 'congruent': 0}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal_ht', 'congruent': 8}, 'OP': 'STOR'}
{'58': 394}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
